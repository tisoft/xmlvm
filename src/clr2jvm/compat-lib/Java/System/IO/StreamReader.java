package System.IO;
import java.io.BufferedReader;
import java.io.FileReader;



import System.String;


public class StreamReader extends TextReader {

	FileReader fReader;
	BufferedReader reader; 
	public StreamReader(String fileName) throws Exception
	{
		fReader = new FileReader(fileName.value);
		reader = new BufferedReader(fReader);
	}
	@Override
	public String ReadToEnd() throws Exception
	{
		StringBuilder buf = new StringBuilder();
		java.lang.String s;
		while((s = reader.readLine()) != null)
		{
			buf.append(s + System.getProperty("line.separator"));
		}
		return new String(buf.toString());
	}
	@Override
	public void Close() throws Exception
	{
		reader.close();
	}
	public static StreamReader __NEW(String fileName) throws Exception
	{
		return new StreamReader(fileName);
	}
}
