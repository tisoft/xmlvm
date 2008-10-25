
package System;


public class Int32
    extends Object
{

    public int value;



    public Int32(int value)
    {
        this.value = value;
    }



    public static Int32 __BOX(int value)
    {
        return new Int32(value);
    }



    public String ToString()
    {
        return new String("" + value);
    }
}
