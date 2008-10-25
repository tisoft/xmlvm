
package System.Drawing;

import System.ValueType;



public class Size
    extends ValueType
{

    public int x;
    public int y;



    public void __CONSTRUCTOR(int x, int y)
    {
        this.x = x;
        this.y = y;
    }
    
    
    // Necessary in case the Visual Studio compiler
    // decides to treat a Value Type as an object.
    public static Size __NEW(int x, int y)
    {
        Size s = new Size();
        s.__CONSTRUCTOR(x, y);
        return s;
    }
}
