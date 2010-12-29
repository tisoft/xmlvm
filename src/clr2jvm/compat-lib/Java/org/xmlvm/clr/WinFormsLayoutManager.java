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

package org.xmlvm.clr;

import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.LayoutManager;
import java.awt.Rectangle;

import javax.swing.JMenuBar;

import System.Windows.Forms.AnchorStyles;
import System.Windows.Forms.Control;
import System.Windows.Forms.DockStyle;
import System.Windows.Forms.Form;
import System.Windows.Forms.Control.ControlCollection;



public class WinFormsLayoutManager
    implements LayoutManager
{

    private Form      form        = null;
    private Dimension currentSize = null;



    public WinFormsLayoutManager(Form form)
    {
        this.form = form;
    }



    public void addLayoutComponent(String arg0, Component arg1)
    {
    }



    public void layoutContainer(Container container)
    {
        Dimension newSize = container.getSize();
        int dx = newSize.width - currentSize.width;
        int dy = newSize.height - currentSize.height;
        ControlCollection controls = form.get_Controls();
        int nComps = container.getComponentCount();
        
        
        if(form.get_MainMenuStrip() != null)
        {
        	JMenuBar bar = form.get_MainMenuStrip().myBar;
        	Rectangle tmp = bar.getBounds();
        	tmp.width = newSize.width;
            bar.setBounds(tmp);
        }
        for (int i = 0; i < nComps; i++) {
            Component c = container.getComponent(i);
            if (c.isVisible()) {
            	           
                Rectangle bounds = c.getBounds();
                Control wfControl = controls.getWinFormsControl(c);
                if(wfControl.get_Dock().value__ == DockStyle.Fill)
                {
                	if(form.get_MainMenuStrip() != null)
                	{
                		bounds.height = newSize.height - form.get_MainMenuStrip().myBar.getHeight();
                    	bounds.y = form.get_MainMenuStrip().myBar.getHeight();
                    	
                	}
                	else
                	{
                		bounds.y = 0;
                		bounds.height = newSize.height;
                	}
                	bounds.width = newSize.width;
                	bounds.x = 0;
                	c.setBounds(bounds);
                	
                }
                else
                {
	                int styles = wfControl.get_Anchor().getStyles();
	                if ((styles & AnchorStyles.Right) != 0 && (styles & AnchorStyles.Left) == 0)
	                    // Align control with right border, but don't resize
	                    bounds.x += dx;
	                if ((styles & AnchorStyles.Right) != 0 && (styles & AnchorStyles.Left) != 0)
	                    // Resize control to match new width
	                    bounds.width += dx;
	                if ((styles & AnchorStyles.Bottom) != 0 && (styles & AnchorStyles.Top) == 0)
	                    // Align control with bottom border, but don't resize
	                    bounds.y += dy;
	                if ((styles & AnchorStyles.Bottom) != 0 && (styles & AnchorStyles.Top) != 0)
	                    // Resize control to match new height
	                    bounds.height += dy;
	                c.setBounds(bounds);
	                }
            }
        }
        currentSize = newSize;
    }



    public Dimension minimumLayoutSize(Container container)
    {
        return container.getSize();
    }



    public Dimension preferredLayoutSize(Container container)
    {
        if (currentSize == null)
            currentSize = container.getSize();
        return container.getSize();
    }



    public void removeLayoutComponent(Component arg0)
    {
    }
}
