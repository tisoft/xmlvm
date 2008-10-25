
package System.Windows.Forms;

import java.awt.TextArea;
import java.awt.event.ActionListener;
import java.beans.PropertyChangeListener;

import javax.swing.*;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

import System.EventArgs;
import System.EventHandler;
import System.String;



public class TextBox
    extends TextBoxBase
{

    public TextBox()
    {
        t = new JTextArea();
        component = new JScrollPane(t);
        t.setRows(1);
    }



    public void set_Text(String text)
    {
        t.setText(text.value);
    }



    public String get_Text()
    {
        return new String(t.getText());
    }
    
    EventHandler textChanged;
    @Override
    public void add_TextChanged(EventHandler handler)
    {
    	textChanged = handler;
    	
    	t.getDocument().addDocumentListener(
    			
    	new DocumentListener()
		{
    		public void insertUpdate(DocumentEvent d )
    		{
    			trigger(d);
    		}
    		public void changedUpdate(DocumentEvent d )
    		{
    			trigger(d);    			
    		}
    		public void removeUpdate(DocumentEvent d )
    		{
    			trigger(d);
    		}
    		public void trigger(DocumentEvent e)
    		{
    			if(textChanged != null)
				{
    				textChanged.Invoke(TextBox.this , EventArgs.Empty);
				}	
    		}
		});
		
    	
    }



    public void set_ScrollBars(ScrollBars scrollBars)
    {
        switch (scrollBars.value__) {
            case ScrollBars.None:
                ((JScrollPane) component)
                        .setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
                ((JScrollPane) component)
                        .setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER);
                break;

            case ScrollBars.Horizontal:
                ((JScrollPane) component)
                        .setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
                ((JScrollPane) component)
                        .setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER);
                break;

            case ScrollBars.Vertical:
                ((JScrollPane) component)
                        .setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
                ((JScrollPane) component)
                        .setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
                break;

            case ScrollBars.Both:
                ((JScrollPane) component)
                        .setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
                ((JScrollPane) component)
                        .setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
                break;
        }

    }
}
