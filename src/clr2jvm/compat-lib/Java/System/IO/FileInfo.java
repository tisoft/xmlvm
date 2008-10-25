package System.IO;

import java.io.File;

import System.String;
public class FileInfo extends FileSystemInfo {

	File javaFile;
	public FileInfo(String fileName)
	{
	javaFile = new File(fileName.value);
	}
	@Override
	public String get_Name()
	{
		return new String(javaFile.getName());
	}
	public static FileInfo __NEW(String s)
	{
		return new FileInfo(s);
	}
}
