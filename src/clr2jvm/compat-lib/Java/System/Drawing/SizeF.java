
package System.Drawing;

import System.ValueType;



public class SizeF
    extends ValueType
{

    public float x;
    public float y;



    public void __CONSTRUCTOR(float x, float y)
    {
        this.x = x;
        this.y = y;
    }
    
    
    // Necessary in case the Visual Studio compiler
    // decides to treat a Value Type as an object.
    public static SizeF __NEW(float x, float y)
    {
        SizeF s = new SizeF();
        s.__CONSTRUCTOR(x, y);
        return s;
    }
}
