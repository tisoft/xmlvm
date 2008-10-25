package System.Windows.Forms;

import javax.swing.JFileChooser;



public class OpenFileDialog extends FileDialog {
	
	public OpenFileDialog()
	{
	}
	@Override
	public DialogResult ShowDialog()
	{
		switch(super.fileChoose.showOpenDialog(null))
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
