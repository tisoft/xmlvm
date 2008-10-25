package System.Windows.Forms;

import javax.swing.JMenuBar;

import System.String;

public class MenuStrip extends ToolStrip implements IToolStripItemCollectionOnAdd{

	ToolStripItemCollection items;
	public JMenuBar myBar;
	public MenuStrip()
	{
		   items = new ToolStripItemCollection(this);
		   component = myBar = new JMenuBar();
	}
	@Override
	public String get_Text() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void set_Text(String text) {
		// TODO Auto-generated method stub

	}

	@Override
	public ToolStripItemCollection get_Items()
	{
		
		return items;
		
	}
	public void ItemAdded(ToolStripItem added) {
		
		myBar.add(added.menu);
		
	}

}
