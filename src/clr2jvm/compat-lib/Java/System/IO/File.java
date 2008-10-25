package System.IO;

import java.io.FileWriter;

import System.Object;
import System.String;
public class File extends Object {

	public static void WriteAllText(String filename, String text) throws Exception
	{
	FileWriter writer = new FileWriter(filename.value);
	writer.write(text.value);
	writer.close();
	
	}
}
