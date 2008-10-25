
package org.xmlvm;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.mozilla.javascript.ErrorReporter;
import org.mozilla.javascript.EvaluatorException;


import com.crazilec.util.UtilCopy;
import com.yahoo.platform.yui.compressor.JavaScriptCompressor;



public class XmlvmBuilder
{

    protected String              applicationName;
    protected String              indexFileName;
    protected String              mainClass;
    protected String              destination;
    protected List<LocationEntry> javaClasspaths      = new ArrayList<LocationEntry>();
    protected List<LocationEntry> exePaths            = new ArrayList<LocationEntry>();
    protected List<LocationEntry> javaScriptResources = new ArrayList<LocationEntry>();
    protected List<LocationEntry> resources           = new ArrayList<LocationEntry>();
    protected List<Chunk>         chunks              = new ArrayList<Chunk>();
    protected boolean             createAssembly      = false;
    protected boolean             compress            = false;



    public boolean build(boolean includeXmlvmBootstrap) throws Exception
    {
        // Add all files needed by xmlvm to the lists, so that they are
        // added to the final build
        if (includeXmlvmBootstrap) {
            includeXmlvmBootstrap();
        }
        
        System.out.println("Creating or clearing " + this.destination);
        
        // Create destination directory, if it does not exist already
        // If it does exist, remove its contents
        File destinationDir = new File(this.destination);
        if (destinationDir.exists()) {
            if (!deleteDirectory(new File(this.destination))) {
                System.out.println("Couldn't clear destination directory");
            }
        }
        destinationDir.mkdirs();


        // STEP 1: - Compile class files to JavaScript and copy them to
        // destination
        // Java
        System.out.println("Translating Java classes...");
        for (LocationEntry loc : javaClasspaths) {
            if (loc.getType().equals("dir")) {
                if (!loc.getLocation().endsWith(File.separator))
                    loc.setLocation(loc.getLocation() + File.separator);
                
                String mainArgs[] = {"--js", "--out=" + destinationDir,
                    loc.getLocation() + "*.class"};
                
                System.out.print("Exec: ");
                for(String i:mainArgs)
                {
                 System.out.print(i + " " );
                }
                System.out.println("\n");
                
                Main.main(mainArgs);
            }
            else {
                System.err
                        .println("ERROR: Only directories are supported as classpaths right now");
                continue;
            }

        }
        // .NET
        System.out.println("Translating .NET executables...");
        for (LocationEntry loc : exePaths) {
            if (loc.getType().equals("dir")) {
                if (!loc.getLocation().endsWith(File.separator))
                    loc.setLocation(loc.getLocation() + File.separator);
                String mainArgs[] = {"--js", "--out=" + destinationDir,
                    loc.getLocation() + "*.exe"};
                
                System.out.print("Exec: ");
                for(String i:mainArgs)
                {
                 System.out.print(i + " " );
                }
                System.out.println("\n");
                
                Main.main(mainArgs);
            }
            else {
                System.err
                        .println("ERROR: Only directories are supported as exepaths right now");
                continue;
            }
       
        }
        
       
        // Find library classes written by us. 
        List<JsFile> libFiles = new ArrayList<JsFile>();
          
        // Sun File IO API sucks BIG TIME when compared to Microsofts .NET System.Io.  
        List<File> subDirsToProcess = new ArrayList<File>();
        subDirsToProcess.add(new File("./src/xmlvm2js"));
        
        while(subDirsToProcess.size() != 0)
        {
        	File cur = subDirsToProcess.get(0);
        	subDirsToProcess.remove(0);
        	
	        for(String subFileOrDir : cur.list())
	        {	        	
	        	File sub = new File(cur.getPath() + "\\" + subFileOrDir);
	        	if(sub.isDirectory())
	        	{
	        		subDirsToProcess.add(sub);
	        	}
	        	else	        
	        	{
	        		if(sub.getName().endsWith(".js"))
	        		{
	        			//System.out.println("Library: " + sub.getPath());
	        			libFiles.add(new JsFile(sub.getAbsoluteFile()));
	        		}
	        	}
	        }
        }
        
        List<JsFile> userFiles = new ArrayList<JsFile>(); // The files the user converted to javascript.
        subDirsToProcess.add(new File(this.destination));
        
        while(subDirsToProcess.size() != 0)
        {
        	File cur = subDirsToProcess.get(0);
        	subDirsToProcess.remove(0);
        	
	        for(String subFileOrDir : cur.list())
	        {	        	
	        	File sub = new File(cur.getPath() + "\\" + subFileOrDir);
	        	if(sub.isDirectory())
	        	{
	        		subDirsToProcess.add(sub);
	        	}
	        	else	        
	        	{
	        		if(sub.getName().endsWith(".js"))
	        		{
	        			//System.out.println("UserFile: " + sub.getPath());
	        			userFiles.add(new JsFile(sub.getAbsoluteFile()));
	        			
	        		}
	        	}
	        }
        }
        
        /*
        for(JsFile userFile:userFiles)
        {
        	System.out.println( userFile.getClassName() + " Depends on load ");
        	
        	for(String s : userFile.getLoadDependencies())
        	{
        		System.out.println(s);
        	}
        	
        	System.out.println( userFile.getClassName() + " Depends on library");
        	
        	for(String s : userFile.getAllDependencies())
        	{
        		System.out.println(s);
        	}
        }
        */
        
        
       // Find what set of the library we need to add
        
       List<JsFile> requiredLib = new ArrayList<JsFile>();
       String mainClassName = "";
       for(JsFile userFile:userFiles)
       {
    	   if(userFile.fileContent.indexOf("_Main : function()") != -1)
    			   {
    		   		System.out.println("Using " + userFile.className + " as main class");
    		   		mainClassName = userFile.className;
    		   		requiredLib.add(userFile);
    			   }

       }
       
       for(int x=0;x<requiredLib.size();x++)
       {
    	   JsFile curClass = requiredLib.get(x);
    	   
    	   List<String> allFiles = new ArrayList<String>();
    	   for(String s : curClass.getAllDependencies())
    	   {
    		   allFiles.add(s);
    	   }
    	   for(String s : curClass.getLoadDependencies())
    	   {
    		   allFiles.add(s);
    	   }
    	   
    	   // Now for all the classes in our depend list, make sure they are in the required lib
    	   
    	   for(String needClassName: allFiles)
    	   {
    		   //System.out.println("For class " + curClass.className + " require " + needClassName );
    		   Boolean isHere = false;
        	   
    		   for(JsFile curList:requiredLib)
    		   {
    			   if(curList.className != null &&
    					   curList.className.equals(needClassName))
    			   {
    				   //System.out.println("Already have it!"); 
    				   isHere = true;
    				   break;
    			   }
    		   }
    		   
    		   if(!isHere)
        	   {
    			   Boolean found = false;
        		   // Go looking in the library + user files and add it.
    			   for(JsFile j:userFiles)
    			   {
    				  if(j.className != null &&
    						  j.className.equals(needClassName))
    				  {
    					  requiredLib.add(j);
    					  found = true;
    					  //System.out.println("Found " + j.className + " adding..");
    					  break;
    				  }
    			   }
    			   if(!found)
    			   {
	    			   for(JsFile j:libFiles)
	    			   {
	    				  if(j.className == null)
	    				  {
	    					  continue;
	    				  }
	    				  if(j.className.equals(needClassName))
	    				  {
	    					  requiredLib.add(j);
	    					  found = true;
	    					  //System.out.println("Found " + j.className + " adding...");
	    					  break;
	    				  }
	    			   }
    			   }
    			   if(!found)
    			   {
    				System.out.println("Error did not find " + needClassName);   
    			   }   
        	   }
    	   }
  
       }
       /*
       System.out.println("All required...");
       for(JsFile all: requiredLib)
       {
           System.out.println(all.className);
       }*/
       
       // Now need to reorder
       
       Boolean hasChanged = true;
       
       while(hasChanged)
       {
    	   hasChanged = false;
	       for(int x=0;x<requiredLib.size(); x++)
	       {
	    	  // Verify all load dependencies come before us.  If not then we stick ourselves after the 
	    	  // last load depend that we are about.
	    	  JsFile cur = requiredLib.get(x);
	    	  
	    	  // Find highest index of load depend
	    	  int highIdx = 0; 
	    	  for(String s : cur.getLoadDependencies())
	    	  {
	    		  for(int k=0;k<requiredLib.size();k++)
	    		  {
	    			  if(requiredLib.get(k).className.equals(s))
	    			  {
	    				  highIdx = highIdx < k ? k:highIdx;
	    				  break;
	    			  }
	    		  }
	    	  }
	    	  
	    	  if(x<highIdx)
	    	  {
	    		  // need to move ourself to after the last one we need.
	    		  JsFile tmp = requiredLib.get(x);
	    		  //System.out.println(tmp.className + " from " + x + " to " + highIdx);
	    		  requiredLib.remove(x);
	    		  requiredLib.add(highIdx, tmp);
	    		  hasChanged = true;
	    	  }
	    	   
	       }
       }
       
       /*
       System.out.println("All required in load order ...");
       for(JsFile all: requiredLib)
       {
           System.out.println(all.className);
       }
       */

        // OK, go through the output directory seeing what classes there are. 
        // Include any class with a static void main that we just cross compiled as we are doing apps here not  

        // STEP 3: - Copy resources to destination
        System.out.println("Copying resources...");
        for (LocationEntry res : resources) {
            if (res.getType().equals("dir")) {
            	System.out.println("copy " + res.getLocation()+ " " + this.destination);
                copyDirectory(res.getLocation(), this.destination);
            }
            else {
            	System.out.println("copy " + res.getLocation()+ " " + this.destination);
                copyFile(res.getLocation(), this.destination);
                
            }
        }
        
        // Spit out a reasonable index file...
        
        // STEP 7: - Create one single JS file that works
        try {
        	FileReader fReader;
        	BufferedReader reader; 
     
    		fReader = new FileReader("./src/xmlvm2js/indexTemp.html");
    		reader = new BufferedReader(fReader);
        	
    		StringBuilder buf = new StringBuilder();
    		java.lang.String s;
    		while((s = reader.readLine()) != null)
    		{
    			buf.append(s + System.getProperty("line.separator"));
    		}
        	reader.close();
        	
        	String result = new String(buf.toString());
        	
            FileWriter writer = new FileWriter(this.destination + "\\index.html");
            writer.write(result.replaceAll("\\{MainClassName\\}",mainClassName));
            writer.close();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
  
        if (createAssembly) {
        	StringBuilder sb = new StringBuilder();
        	
        	for(JsFile curF: requiredLib)
        	{
        		sb.append("\n//" + curF.className + "\n" + 
        					curF.fileContent.replaceAll("checkClass\\(\".*\"\\);", ""));
        	}
        	
        	
        	// As we don't have a real classloader, we need to initialize the
            // classes after loading...
        	sb.append("\n//CLASS INITIALIZATION:\n");
            for (JsFile file : requiredLib ) {
                if (file.getClassName() != null) {
                    String c = file.getClassName();
                    sb.append("if (" + c + ".__clinit_ != undefined) " + c
                            + ".__clinit_();\n");
                    sb.append("if (" + c + ".__cctor != undefined) " + c
                            + ".__cctor();\n");
                }
            }
        	
        	String serializedContent = sb.toString();
        	
            String assemblyFileName = this.destination + "\\assembly.js";

            
            // STEP 6: Compress output if set
            if (compress) {
                System.out.print("Compressing... ");
                int sizeBefore = serializedContent.length();
                serializedContent = compress(serializedContent);
                int sizeAfter = serializedContent.length();
                System.out.println("Done. (" + sizeBefore + " - " + sizeAfter
                        + " = " + (sizeBefore - sizeAfter) + ")");
            }

            // STEP 7: - Create one single JS file that works
            try {
                FileWriter writer = new FileWriter(assemblyFileName);
                writer.write(serializedContent.toCharArray());
                writer.close();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            System.out.println("Assembly written to: " + assemblyFileName);
        }

    
        System.out.println("DONE - You can now deploy your project.");
        return true;
    }



    public boolean build() throws Exception
    {
        // By default, include xmlvm bootstrap
        return build(true);
    }



    /**
     * Compresses the given JavaScript code and return the deflated result or
     * null, if an error occurred
     * 
     * @param code
     * @return
     */
    public String compress(String code)
    {
        Reader in = new StringReader(code);
        try {
            ErrorReporter reporter = new ErrorReporter() {

                public void warning(String message, String sourceName,
                        int line, String lineSource, int lineOffset)
                {
                    if (line < 0) {
                        System.out.println("\n" + message);
                    }
                    else {
                        System.out.println("\n" + line + ':' + lineOffset + ':'
                                + message);
                    }
                }



                public void error(String message, String sourceName, int line,
                        String lineSource, int lineOffset)
                {
                    if (line < 0) {
                        System.err.println("\n" + message);
                    }
                    else {
                        System.err.println("\n" + line + ':' + lineOffset + ':'
                                + message);
                    }
                }



                public EvaluatorException runtimeError(String message,
                        String sourceName, int line, String lineSource,
                        int lineOffset)
                {
                    error(message, sourceName, line, lineSource, lineOffset);
                    return new EvaluatorException(message);
                }
            };

            JavaScriptCompressor compressor = new JavaScriptCompressor(in,
                                                                       reporter);



            // Close the input stream in case the output file should overwrite
            // it...
            in.close();
            in = null;

            // Open the output stream now in case it should overwrite the
            // input...
            Writer out = new StringWriter();
            compressor.compress(out, -1, false, false, false);
            return out.toString();
        }
        catch (EvaluatorException e) {
            e.printStackTrace();
            // Return a special error code used specifically by the web
            // front-end.
            return null;
        }
        catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }



    public void includeXmlvmBootstrap()
    {
    	System.out.println("Including bootstrap...");
        this.resources.add(new LocationEntry("./lib/jsolait_xhr.js",
                                                       false));
        this.resources.add(new LocationEntry("./lib/qooxdoo/qx.js",
                                                       false));
        this.resources.add(new LocationEntry("./lib/qooxdoo/resource"));
    }



    static private boolean copyDirectory(String from, String to)
    {
        UtilCopy uc = new UtilCopy();

        try {
            if (!to.endsWith(File.separator))
                to += File.separator;
            uc.xCopy(to + (new File(from)).getName(), from);
            return true;
        }
        catch (FileNotFoundException e) {
            System.err.println("Couldn't find: " + from);
        }
        catch (Exception e) {
            System.err.println("Couldn't copy: " + from);
            System.err.println("Reason: " + e.getMessage());
        }
        return false;
    }



    static private boolean copyFile(String from, String to)
    {
        UtilCopy uc = new UtilCopy();
        File f = new File(from);
        if (!f.isFile())
            return false;

        String fileName = f.getName();
        if (!to.endsWith(File.separator))
            to += File.separator;

        try {
            uc.binCopy(to + fileName, from);
        }
        catch (FileNotFoundException e) {
            System.err.println("Couldn't find: " + from);
        }
        catch (IOException e) {
            System.err.println("Couldn't copy: " + from);
        }
        catch (Exception e) {
            System.err.println("Couldn't copy: " + from);
            System.err.println("Reason: " + e.getMessage());
        }

        return true;
    }



    static private boolean deleteDirectory(File path)
    {
        if (path.exists()) {
            File[] files = path.listFiles();
            for (int i = 0; i < files.length; i++) {
                if (files[i].isDirectory()) {
                    deleteDirectory(files[i]);
                }
                else {
                    files[i].delete();
                }
            }
        }
        return (path.delete());
    }


    public void addJavaClasspath(LocationEntry location)
    {
        this.javaClasspaths.add(location);
    }



    public void addExePath(LocationEntry location)
    {
        this.exePaths.add(location);
    }



    public LocationEntry[] getJavaClasspaths()
    {
        LocationEntry le[] = new LocationEntry[0];
        return this.javaClasspaths.toArray(le);
    }



    public boolean removeJavaClasspath(LocationEntry locRemove)
    {
        for (LocationEntry loc : this.javaClasspaths) {
            if (loc.getLocation().equals(locRemove.getLocation())) {
                this.javaClasspaths.remove(loc);
                return true;
            }
        }
        return false;
    }



    public void addJavaScriptResource(LocationEntry location)
    {
        this.javaScriptResources.add(location);
    }



    public LocationEntry[] getJavaScriptResources()
    {
        LocationEntry le[] = new LocationEntry[0];
        return this.javaScriptResources.toArray(le);
    }



    public boolean removeJavaScriptResource(LocationEntry locRemove)
    {
        for (LocationEntry loc : this.javaScriptResources) {
            if (loc.getLocation().equals(locRemove.getLocation())) {
                this.javaScriptResources.remove(loc);
                return true;
            }
        }
        return false;
    }



    public void addResource(LocationEntry location)
    {
        this.resources.add(location);
    }



    public LocationEntry[] getResources()
    {
        LocationEntry le[] = new LocationEntry[0];
        return this.resources.toArray(le);
    }



    public boolean removeResource(LocationEntry locRemove)
    {
        for (LocationEntry loc : this.resources) {
            if (loc.getLocation().equals(locRemove.getLocation())) {
                this.resources.remove(loc);
                return true;
            }
        }
        return false;
    }



    public String getApplicationName()
    {
        return applicationName;
    }



    public void setApplicationName(String applicationName)
    {
        this.applicationName = applicationName;
    }



    public String getIndexFileName()
    {
        return indexFileName;
    }



    public void setIndexFileName(String indexFileName)
    {
        this.indexFileName = indexFileName;
    }



    public String getMainClass()
    {
        return mainClass;
    }



    public void setMainClass(String mainClass)
    {
        this.mainClass = mainClass;
    }



    public String getDestination()
    {
        return destination;
    }



    public void setDestination(String destination)
    {
        this.destination = destination;
    }





    /**
     * Recursively get a list of all JS-Files in the given base path
     * 
     * @param base
     * @return
     */
    private static List<JsFile> getJsFilesRecursive(File base)
    {
        List<JsFile> result = new ArrayList<JsFile>();
        File children[] = base.listFiles();
        for (File child : children) {
            if (child.isFile() && child.getName().toLowerCase().endsWith(".js")) {
                result.add(new JsFile(child));
            }
            else if (child.isDirectory()) {
                result.addAll(getJsFilesRecursive(child));
            }
        }
        return result;
    }



    /**
     * Defines a JavaScript file that contains one class. It holds the file's
     * contents as well as all the dependencies of the class within.
     */
    static class JsFile
    {

        private static final String QX_CLASS_DEFINE = "qx.Class.define(\"";
        private static final String CHECKCLASS      = "checkClass(\"";
        private String              className       = null;
        private String              fileContent;
        private List<String>        dependsOnAll       = new ArrayList<String>();
        private List<String>        dependsOnLoad       = new ArrayList<String>();



        public JsFile(File file)
        {
        	// Read contents of the file
        	fileContent = getFileAsString(file);
        	int classDefinePosition = 0;

        	// Check if we find a class definition within the file
        	if ((classDefinePosition = fileContent.indexOf(QX_CLASS_DEFINE)) != -1) {
        		int defineEnd = fileContent.indexOf("\"", classDefinePosition
        				+ QX_CLASS_DEFINE.length() + 1);
        		this.className = fileContent.substring(classDefinePosition
        				+ QX_CLASS_DEFINE.length(), defineEnd);
        	}
        	else {
        		// If there is no class definition, we don't have a qooxdoo
        		// class in this file
        		this.className = null;
        		return;
        	}

        	HashSet<String> depends = new HashSet<String>();

        	Matcher m =Pattern.compile(".*checkClass\\(\\\"(.*)\\\"\\)").matcher(fileContent);
        	while(m.find())
        	{
        		
    			if(m.start(0) > classDefinePosition)
    			{
    				if(!depends.contains(m.group(1)))
            		{
        				depends.add(m.group(1));
        			}
        		}
    			else
    			{
    				dependsOnLoad.add(m.group(1).replace(".", "_"));
    			}
        	}
        	
        		
        	for(String dep: depends)
        	{

        		Boolean add = true;
        		if(this.className != null)
        		{
        			add =!this.className.equals(dep.replace(".", "_"));
        		}

        		if(add)
        		{
        			this.dependsOnAll.add(dep.replace(".", "_"));
        		}

        	}

        }



        /**
         * Get the content of a file. Quite fast.
         * 
         * @param file
         * @return
         */
        private String getFileAsString(File file)
        {
            final int READ_BUFFER = 4096;

            FileInputStream is;
            try {
                is = new FileInputStream(file);
                StringBuffer buffer = new StringBuffer();
                byte b[] = new byte[READ_BUFFER];
                int l = 0;
                if (is == null) {
                    return "";
                }
                else {
                    while ((l = is.read(b)) > 0) {
                        buffer.append(new String(b, 0, l));
                    }
                }
                return buffer.toString();
            }
            catch (FileNotFoundException e) {
                e.printStackTrace();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            return "";
        }






        public String[] getLoadDependencies()
        {
            String[] s = new String[0];
            return this.dependsOnLoad.toArray(s);
        }

        public String[] getAllDependencies()
        {
            String[] s = new String[0];
            return this.dependsOnAll.toArray(s);
        }


        public void setClassName(String name)
        {
            this.className = name;
        }



        public String getClassName()
        {
            return this.className;
        }



        public String getFileContent()
        {
            return fileContent;
        }



        public void setFileContent(String fileContent)
        {
            this.fileContent = fileContent;
        }
    }



    public boolean isCreateAssembly()
    {
        return createAssembly;
    }



    public void setCreateAssembly(boolean createAssembly)
    {
        this.createAssembly = createAssembly;
    }



    public boolean isCompress()
    {
        return compress;
    }



    public void setCompress(boolean compress)
    {
        this.compress = compress;
    }

}



class LocationEntry
{

    private String  type           = "dir";
    private String  kind;
    private boolean justContents   = false;
    private String  fileSelect     = "*";
    private String  location;
    private boolean includeInIndex = false;



    /**
     * Create a new Location Entry
     * 
     * @param location
     * @param dir
     *        true: location points to directory. false to a file
     */
    public LocationEntry(String location, boolean dir)
    {
        this.type = (dir ? "dir" : "file");
        this.justContents = false;
        this.fileSelect = "*";
        this.location = location;
    }



    public LocationEntry(String location)
    {
        this(location, true);
    }



    public String getLocation()
    {
        return location;
    }



    public void setLocation(String location)
    {
        this.location = location;
    }



    public String getType()
    {
        return type;
    }



    public void setType(String type)
    {
        this.type = type;
    }



    public String getKind()
    {
        return kind;
    }



    public void setKind(String kind)
    {
        this.kind = kind;
    }



    public boolean isJustContents()
    {
        return justContents;
    }



    public void setJustContents(boolean justContents)
    {
        this.justContents = justContents;
    }



    public String getFileSelect()
    {
        return fileSelect;
    }



    public void setFileSelect(String fileSelect)
    {
        this.fileSelect = fileSelect;
    }



    public boolean isIncludeInIndex()
    {
        return includeInIndex;
    }



    public void setIncludeInIndex(boolean includeInIndex)
    {
        this.includeInIndex = includeInIndex;
    }
}



class Chunk
{
    // TODO
}
