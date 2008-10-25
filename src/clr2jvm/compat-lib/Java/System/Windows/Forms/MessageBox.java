package System.Windows.Forms;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

import System.Object;
import System.String;
public class MessageBox extends Object {

	public static DialogResult Show(String prompt,
			String title,
			MessageBoxButtons buttons,
			MessageBoxIcon icon,
			MessageBoxDefaultButton defaultButton)
	{
		
		int result = JOptionPane.showConfirmDialog(null,prompt.value,title.value,JOptionPane.YES_NO_CANCEL_OPTION);
		switch(result)
		{
		case JFileChooser.CANCEL_OPTION:
			return new DialogResult( DialogResult.No);
		case JFileChooser.APPROVE_OPTION:
			return new DialogResult( DialogResult.Yes);
		case 2:
			return new DialogResult( DialogResult.Cancel);
		default:
			return new DialogResult( DialogResult.None);
	
		}
	}
}
