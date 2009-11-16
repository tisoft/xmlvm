/*
 * Created on Dez 05, 2005 by Sascha
 */

package org.xmlvm.dep;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.xmlvm.Main;

public class Recursion {

    public static final char               pathSeparator = '/';

    private static HashMap<String, String> loaded        = new HashMap<String, String>();

    // Where to store all the xmlvm files
    public static final String             basePath      = "xmlvm_root" + pathSeparator;

    public void startRecursion(Document xmlvm) {
        Import imp = new Import();
        imp.genImport(xmlvm);

        // Get class and package name for saving this file
        Element classNode = xmlvm.getRootElement().getChild("class");
        String className = classNode.getAttributeValue("name");
        String packageName = classNode.getAttributeValue("package");
        String path = basePath + packageName.replace('.', pathSeparator);
        String filename = className + ".xmlvm";

        writeFile(path, filename, xmlvm);

        // Save this classname in index, so it is not loaded again in the future
        loaded.put(packageName + "." + className, "");

        // Now reload all other classes
        Element imports = xmlvm.getRootElement().getChild("import");
        List<Element> referenceList = imports.getChildren();

        String refname = "";
        Main main;

        for (Element ref : referenceList) {
            refname = ref.getAttributeValue("class-type");
            // TODO: Workaround with "["
            if (!isLoaded(refname) && !refname.startsWith("[")) {
                System.out.println("---> " + refname);
                main = new Main(new File(refname));
                startRecursion(main.genXMLVM());
            } else {
                System.out.println("Skipped: " + refname);
            }

        }
    }

    private void writeFile(String path, String filename, Document xmlvm) {
        System.out.println("[Recursion] Saving class: " + filename);

        String completeFilePath = path + pathSeparator + filename;

        // create the path, if it doesn't exist yet
        File fPath = new File(path);
        fPath.mkdirs();

        // Write the file to disk
        try {
            FileWriter fw = new FileWriter(completeFilePath);
            XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
            outputter.output(xmlvm, fw);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    private boolean isLoaded(String completeClassName) {
        if (loaded.get(completeClassName) != null)
            return true;
        else
            return false;
    }
}
