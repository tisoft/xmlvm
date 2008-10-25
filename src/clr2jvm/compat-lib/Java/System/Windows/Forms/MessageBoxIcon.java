package System.Windows.Forms;
import System.Enum;
public class MessageBoxIcon extends Enum
{
	final public static int None = 0;
	final public static int Hand = 16;
	final public static int Error = 16;
	final public static int Stop = 16;
	final public static int Question = 32;
	final public static int Exclamation = 48;
	final public static int Warning = 48;
	final public static int Asterisk = 64;
	final public static int Information = 64;
	public int value__;
	public MessageBoxIcon()
	{
		this.value__ = 0;
	}
	public MessageBoxIcon(int toSet)
	{
		this.value__ = toSet;
	}
	public static MessageBoxIcon __BOX(int toBox)
	{
		return new MessageBoxIcon(toBox);
	}
}