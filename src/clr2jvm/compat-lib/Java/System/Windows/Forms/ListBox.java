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

import javax.swing.*;

import System.Object;
import System.String;



public class ListBox
    extends ListControl
{

    private JList l;
    
    class ObjectCollection
    {

        private JList list = null;



        public ObjectCollection(JList list)
        {
            this.list = list;
        }



        public int Add(Object obj)
        {
            if (obj instanceof String) {
                ((DefaultListModel) list.getModel()).addElement(((String) obj).value);
            }
            
            // TODO return proper ID
            return 0;
        }
    }



    public ListBox()
    {
        l = new JList();
        l.setModel(new DefaultListModel());
        l.setSelectionModel(new DefaultListSelectionModel());
        component = new JScrollPane(l);
        
    }



    public ObjectCollection get_Items()
    {
        return new ObjectCollection(l);
    }



    public void set_SelectedIndex(int idx)
    {
        // ((java.awt.List) component).set
    }



    public Object get_SelectedItem()
    {
        return new String((java.lang.String) l.getSelectedValue());
    }



    public void BeginUpdate()
    {
    }



    public void EndUpdate()
    {
    }
}
