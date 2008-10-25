package System.Windows.Forms;

import System.Enum;



public class DockStyle
    extends Enum
{

    final public static int None   = 0x0000;
    final public static int Top    = 0x0001;
    final public static int Bottom = 0x0002;
    final public static int Left   = 0x0004;
    final public static int Fill  = 0x0005;

    public int              value__;



    public DockStyle(int styles)
    {
        this.value__ = styles;
    }



    public static DockStyle __BOX(int styles)
    {
        return new DockStyle(styles);
    }



    public int getStyles()
    {
        return value__;
    }
}