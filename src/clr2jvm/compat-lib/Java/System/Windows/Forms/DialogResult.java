
package System.Windows.Forms;

import System.Enum;



public class DialogResult
    extends Enum
{

    final public static int None   = 0x0000;
    final public static int OK    = 0x0001;
    final public static int Cancel = 0x0002;
    final public static int Abort   = 0x0003;
    final public static int Retry   = 0x0004;
    final public static int Ignore   = 0x0005;
    final public static int Yes   = 0x0006;
    final public static int No   = 0x0007;
    public int              value__;



    public DialogResult()
    {
    	this.value__ = None;
    }
    public DialogResult(int styles)
    {
        this.value__ = styles;
    }



    public static DialogResult __BOX(int styles)
    {
        return new DialogResult(styles);
    }



    public int getStyles()
    {
        return value__;
    }
}
