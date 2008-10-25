package System.Windows.Forms;

import System.String;

public class ToolStrip extends Control {

	@Override
	public String get_Text() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void set_Text(String text) {
		// TODO Auto-generated method stub

	}	
	
	public ToolStripItemCollection get_Items()
	{
		return new ToolStripItemCollection();
	}

}
