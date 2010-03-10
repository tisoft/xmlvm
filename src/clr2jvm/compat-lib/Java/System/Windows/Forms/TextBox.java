/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */


package System.Windows.Forms;

import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;
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



    @Override
	public void set_Text(String text)
    {
        t.setText(text.value);
    }



    @Override
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
