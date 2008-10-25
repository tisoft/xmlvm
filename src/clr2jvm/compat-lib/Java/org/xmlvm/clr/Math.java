
package org.xmlvm.clr;


public class Math
{

    static public int add_ovf(int x, int y)
    {
        int z = x + y;
        if (z == ((long) x + (long) y))
            return z;
        else {
            // throw new OverflowException();
            System.out.println("OVERFLOW");
        }
        return -1;
    }

}
