using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;

namespace TranslateEnum
{
    class Program
    {
        static void Main(string[] args)
        {
            //ConvertToJava(typeof(System.Windows.Forms.AnchorStyles));

            ConvertToJavaScript(typeof(System.Windows.Forms.DialogResult));

            if (System.Diagnostics.Debugger.IsAttached)
            {
                Console.ReadLine();
            }
        }

        static string EnumName(Type t)
        {
            switch(Enum.GetUnderlyingType(t).Name)
            {
                case "Int32":
                       return "int";
                default:
                       return "UDT";
            }
            
        }

        static string DotsTo_(string s)
        {
            return s.Replace('.', '_');

        }
        static void ConvertToJavaScript(Type t)
        {
       
            Console.WriteLine("checkClass(\"System.Enum\")");
            Console.WriteLine("\n");
            Console.WriteLine("qx.Class.define(\"" + DotsTo_(t.FullName) + "\", {");
            Console.WriteLine("extend: System_Enum,");
            Console.WriteLine("construct: function(in_val) \n{\n this._value__ = in_val;\n},");
            
            Console.WriteLine("statics:");
            Console.WriteLine("{");

            var list = Enum.GetNames(t).GroupBy(a => a).Select(a => a.Key).ToArray();
            foreach (string names in list)
            {
                object val = Enum.Parse(t, names);
                Console.WriteLine(names + " : " + Convert.ChangeType(val, Enum.GetUnderlyingType(t)) + ",");
            }


            Console.WriteLine("___BOX___int: function(in_val)");
            Console.WriteLine("{");
            Console.WriteLine("return new " + DotsTo_(t.FullName) + "(in_val);");
            Console.WriteLine("}");


            Console.WriteLine("},");

            Console.WriteLine("members:");
            Console.WriteLine("{");
            Console.WriteLine("_value__: 0");
            Console.WriteLine("}");

            
            Console.WriteLine("});");



               



            
        }
        static void ConvertToJava(Type t)
        {
            Console.WriteLine("package " + t.Assembly.FullName.Split(',')[0] + ";");
            Console.WriteLine("import System.Enum;");
            Console.WriteLine("public class " + t.Name + " extends Enum");
            Console.WriteLine("{");

            var list = Enum.GetNames(t).GroupBy(a => a).Select(a => a.Key).ToArray();
            foreach (string names in list)
            {
                object val = Enum.Parse(t, names);
                Console.WriteLine("final public static " + EnumName(t) + " " + names + " = " + Convert.ChangeType(val, Enum.GetUnderlyingType(t)) + ";");
            }
            Console.WriteLine("public " + EnumName(t) + " value__;");
            Console.WriteLine("public " + t.Name + "()");
            Console.WriteLine("{");
            Console.WriteLine("this.value__ = 0;");
            Console.WriteLine("}");

            Console.WriteLine("public " + t.Name + "(" + EnumName(t) + " toSet)");
            Console.WriteLine("{");
            Console.WriteLine("this.value__ = toSet;");
            Console.WriteLine("}");

            Console.WriteLine("public static " + t.Name + " __BOX(int toBox)");
            Console.WriteLine("{");
            Console.WriteLine("return new " + t.Name + "(toBox);");
            Console.WriteLine("}");
            Console.WriteLine("}");



        }
    }
}
/*
package System.Windows.Forms;
import System.Enum;
public class DialogResult
    extends Enum
{

    final public static int None   = 0x0000;
    final public static int OK    = 0x0001;
    final public static int Cancel = 0x0002;
    final public static int Abort   = 0x0003;
    final public static int Retry   = 0x0004;
    final public static int Ignore   = 0x0005;
    final public static int Yes   = 0x0006;
    final public static int No   = 0x0007;
    public int              value__;
    public DialogResult()
    {
    	this.value__ = None;
    }
    public DialogResult(int styles)
    {
        this.value__ = styles;
    }



    public static DialogResult __BOX(int styles)
    {
        return new DialogResult(styles);
    }



    public int getStyles()
    {
        return value__;
    }
}
*/