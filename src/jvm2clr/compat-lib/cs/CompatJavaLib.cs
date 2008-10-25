
// mcs -target:library CompatJavaLib.cs

using System;


namespace java.lang {

public class Object
{
}

public class String : Object
{
	public string str;
	
	public String(string str)
	{
		this.str = str;
	}
}


}

namespace java.io {

public class PrintStream : java.lang.Object
{
	public void println(java.lang.String s)
	{
		Console.WriteLine(s.str);
	}
}

}

namespace java.lang
{

public class System : java.lang.Object
{
	static public java.io.PrintStream _out = new java.io.PrintStream();
}


}
