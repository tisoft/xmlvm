package System.Windows.Forms;
import System.Enum;
public class MessageBoxButtons extends Enum
{
	final public static int OK = 0;
	final public static int OKCancel = 1;
	final public static int AbortRetryIgnore = 2;
	final public static int YesNoCancel = 3;
	final public static int YesNo = 4;
	final public static int RetryCancel = 5;
	public int value__;
	public MessageBoxButtons()
	{
		this.value__ = 0;
	}
	public MessageBoxButtons(int toSet)
	{
		this.value__ = toSet;
	}
	public static MessageBoxButtons __BOX(int toBox)
	{
		return new MessageBoxButtons(toBox);
	}
}