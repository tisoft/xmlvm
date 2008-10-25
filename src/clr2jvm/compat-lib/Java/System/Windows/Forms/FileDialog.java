package System.Windows.Forms;


import java.io.File;

import javax.swing.JFileChooser;
import javax.swing.filechooser.FileFilter;

import System.String;

public class FileDialog extends CommonDialog {

	protected JFileChooser fileChoose;
	public FileDialog()
	{
		fileChoose = new JFileChooser();
	
	}
	public void set_Title(String s)
	{
		fileChoose.setDialogTitle(s.value);
	
	}
	class WinFileFilter extends FileFilter
	{

		java.lang.String myFilter;
		java.lang.String myDescription; 
		public WinFileFilter(java.lang.String description, java.lang.String filter)
		{
		 myFilter = filter;
		 myDescription = description;
		}
		private java.lang.String replaceWildcards(java.lang.String wild)
		{
		    StringBuffer buffer = new StringBuffer();
		 
		    char [] chars = wild.toCharArray();
		 
		    for (int i = 0; i < chars.length; ++i)
		    {
		        if (chars[i] == '*')
		            buffer.append(".*");
		        else if (chars[i] == '?')
		            buffer.append(".");
		        else if ("+()^$.{}[]|\\".indexOf(chars[i]) != -1)
		            buffer.append('\\').append(chars[i]);
		        else
		            buffer.append(chars[i]);
		    }
		 
		    return buffer.toString();
		 
		}

		@Override
		public boolean accept(File f) {
			return f.getName().matches(replaceWildcards(myFilter));			
		}

		@Override
		public java.lang.String getDescription() {
			return myDescription;
		}
		
	}
	public void set_Filter(String s)
	{
		java.lang.String splits[] = s.value.split("\\|");
		
		fileChoose.setAcceptAllFileFilterUsed(false);
		for(int x=splits.length-1;x>=0;x-=2)
		{
		fileChoose.addChoosableFileFilter(new WinFileFilter(splits[x-1],splits[x]));
		}
	}
	String defaultExt;
	public void set_DefaultExt(String s)
	{
	    	defaultExt = s;
	}
	public String get_DefaultExt()
	{
		return defaultExt;
	}
	public String get_FileName()
	{
		return new String(fileChoose.getSelectedFile().getAbsolutePath());
	}
	

	
}
