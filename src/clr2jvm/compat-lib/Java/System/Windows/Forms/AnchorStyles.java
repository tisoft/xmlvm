
package System.Windows.Forms;

import System.Enum;



public class AnchorStyles
    extends Enum
{

    final public static int None   = 0x0000;
    final public static int Top    = 0x0001;
    final public static int Bottom = 0x0002;
    final public static int Left   = 0x0004;
    final public static int Right  = 0x0008;

    public int              value__;



    public AnchorStyles(int styles)
    {
        this.value__ = styles;
    }



    public static AnchorStyles __BOX(int styles)
    {
        return new AnchorStyles(styles);
    }



    public int getStyles()
    {
        return value__;
    }
}
