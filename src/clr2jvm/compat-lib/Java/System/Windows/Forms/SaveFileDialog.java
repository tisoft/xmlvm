package System.Windows.Forms;

import javax.swing.JFileChooser;

import System.String;
import System.Windows.Forms.FileDialog;

public class SaveFileDialog extends FileDialog {

	public SaveFileDialog()
	{
	
	}
	
	@Override
	public String get_FileName()
	{
		if( get_DefaultExt() != null 
				&& !super.get_FileName().value.endsWith(get_DefaultExt().value))
		{
			return new String(super.get_FileName().value + get_DefaultExt().value);
		}
		else
		{
			return super.get_FileName();
		}
	}
	@Override
	public DialogResult ShowDialog()
	{
		switch(super.fileChoose.showSaveDialog(null))
		{
		case JFileChooser.CANCEL_OPTION:
			return new DialogResult( DialogResult.Cancel);
		case JFileChooser.APPROVE_OPTION:
			return new DialogResult( DialogResult.OK);
		default:
			return new DialogResult( DialogResult.None);
	
				
		}
	}
}
