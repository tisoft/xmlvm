package System.Windows.Forms;

import java.awt.event.ActionListener;

import javax.swing.JMenu;
import javax.swing.JMenuItem;

import System.Object;
import System.EventArgs;
import System.String;
import System.Drawing.Size;
import System.EventHandler;
import System.Delegate;

public class ToolStripItem extends Object implements IToolStripItemCollectionOnAdd {

	// Because the less than likeable swing maps poorly to the win forms api, we
	// don't know
	// whether we are going to be a menu or a menu item. *sigh*
	JMenuItem menuItem = new JMenuItem();
	JMenu menu = new JMenu();
	ToolStripItemCollection menuItems;

	public ToolStripItem() {
		menuItem.addActionListener(new ActionListener()
		{
			public void actionPerformed(java.awt.event.ActionEvent e) {
				if(onClick != null)
					{
					onClick.Invoke(ToolStripItem.this , EventArgs.Empty);
					}
			}
		});
		
		menu.addActionListener(new ActionListener()
		{
			public void actionPerformed(java.awt.event.ActionEvent e) {
				if(onClick != null)
					{
					onClick.Invoke(ToolStripItem.this , EventArgs.Empty);
					}
			}
		})
			
		;
		
		menuItems = new ToolStripItemCollection(this);
	}

	public ToolStripItemCollection get_DropDownItems() {
		return menuItems;
	}

	public void set_Size(Size s) {

	}

	public void set_Text(String text) {
		menuItem.setText(text.value);
		menu.setText(text.value);
	}

	EventHandler onClick;
	public void add_Click(EventHandler eh) throws Exception
	{
		this.onClick = (EventHandler) eh.Combine(this.onClick,eh);
	}
	

	public String get_Text() {
		return null;
	}

	public void set_Name(String text) {

	}

	public String get_Name() {
		return null;
	}

	public void ItemAdded(ToolStripItem added) {
		{
			menu.add(added.menuItem);
		}
	}
}
