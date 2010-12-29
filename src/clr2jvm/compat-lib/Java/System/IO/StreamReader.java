/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

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
