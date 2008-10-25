
package System.Windows.Forms;

import System.Enum;



public class AutoScaleMode
    extends Enum
{

    final public static int None   = 0x0000;
    final public static int Font    = 0x0001;
    final public static int Dpi = 0x0002;
    final public static int Inherit   = 0x0004;

    public int              value__;



    public AutoScaleMode(int styles)
    {
        this.value__ = styles;
    }



    public static AutoScaleMode __BOX(int styles)
    {
        return new AutoScaleMode(styles);
    }



    public int getStyles()
    {
        return value__;
    }
}
