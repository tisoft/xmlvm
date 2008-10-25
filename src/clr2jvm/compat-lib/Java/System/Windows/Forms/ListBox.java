
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
