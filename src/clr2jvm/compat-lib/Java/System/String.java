
package System;


public class String
    extends Object
{

    public java.lang.String value;

    public static String Empty = new String("");


    public String(java.lang.String value)
    {
        this.value = value;
    }



    public String ToString()
    {
        return this;
    }



    public int get_Length()
    {
        return value.length();
    }



    static public String Concat(String s1, String s2)
    {
        return new String(s1.value + s2.value);
    }



    static public String Concat(String s1, String s2, String s3)
    {
        return new String(s1.value + s2.value + s3.value);
    }


    
    static public String Concat(Object[] objs)
    {
    	java.lang.String str = "";
    	for (int i = 0; i < objs.length; i++) {
    		str += objs[i].ToString().value;
    	}
    	return new String(str);
    }

    
    
    static public boolean op_Equality(java.lang.String s1, java.lang.String s2)
    {
        return s1.equals(s2);
    }



    static public boolean op_Equality(String s1, String s2)
    {
        return s1.value.equals(s2.value);
    }
}
