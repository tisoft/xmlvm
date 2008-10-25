
package System;

import System.String;



public class Convert
    extends Object
{

    static public double ToDouble(String s)
    {
        return Double.parseDouble(s.value);
    }



    static public String ToString(double d)
    {
        return new String(Double.toString(d));
    }
}
