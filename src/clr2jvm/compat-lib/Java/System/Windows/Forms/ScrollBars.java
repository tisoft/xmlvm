
package System.Windows.Forms;

import System.Enum;



public class ScrollBars
    extends Enum
{

    final public static int None       = 0;
    final public static int Horizontal = 1;
    final public static int Vertical   = 2;
    final public static int Both       = 3;

    public int              value__;



    public ScrollBars(int styles)
    {
        this.value__ = styles;
    }



    public static ScrollBars __BOX(int styles)
    {
        return new ScrollBars(styles);
    }



    public int getValue()
    {
        return value__;
    }
}
