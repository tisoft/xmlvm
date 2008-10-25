package System.Windows.Forms;
import System.Enum;
public class MessageBoxDefaultButton extends Enum
{
	final public static int Button1 = 0;
	final public static int Button2 = 256;
	final public static int Button3 = 512;
	public int value__;
	public MessageBoxDefaultButton()
	{
		this.value__ = 0;
	}
	public MessageBoxDefaultButton(int toSet)
	{
		this.value__ = toSet;
	}
	public static MessageBoxDefaultButton __BOX(int toBox)
	{
		return new MessageBoxDefaultButton(toBox);
	}
}
