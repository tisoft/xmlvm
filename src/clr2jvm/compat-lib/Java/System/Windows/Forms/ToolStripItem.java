/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

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
