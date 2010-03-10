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

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.Panel;
import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

import javax.swing.UIManager;

import org.xmlvm.clr.WinFormsLayoutManager;

import System.EventArgs;
import System.EventHandler;
import System.String;
import System.Drawing.Size;

public class Form
    extends ContainerControl
{

    private Frame topLevelFrame;



    EventHandler onLoad;
    
    public void add_Load(EventHandler e)
    {
    	onLoad = e; 
    	topLevelFrame.addWindowListener(
    			new WindowListener()
    			{

					public void windowActivated(WindowEvent e) {
						// TODO Auto-generated method stub
						
					}

					public void windowClosed(WindowEvent e) {
						// TODO Auto-generated method stub
						
					}

					public void windowClosing(WindowEvent e) {
						// TODO Auto-generated method stub
						
					}

					public void windowDeactivated(WindowEvent e) {
						// TODO Auto-generated method stub
						
					}

					public void windowDeiconified(WindowEvent e) {
						// TODO Auto-generated method stub
						
					}

					public void windowIconified(WindowEvent e) {
						// TODO Auto-generated method stub
						
					}

					public void windowOpened(WindowEvent e) {
						if(e != null)
						{
							onLoad.Invoke(Form.this,EventArgs.Empty);
						}
						
					}
    				
    			}
    			
    			);
    }
    MenuStrip mainMenu; 
    public void set_MainMenuStrip(MenuStrip m)
    {
    	mainMenu = m;
    }
    public MenuStrip get_MainMenuStrip()
    {
    	return mainMenu;
    }
    public Form()
    {
        try {
            UIManager
                    .setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
        }
        catch (Throwable t) {
            try {
                UIManager.setLookAndFeel(UIManager
                        .getSystemLookAndFeelClassName());
            }
            catch (Throwable th) {
                th.printStackTrace();
            }
        }

        topLevelFrame = new Frame("");
        component = new Panel();
        ((Panel) component).setLayout(new WinFormsLayoutManager(this));
        topLevelFrame.add(component, BorderLayout.CENTER);

        topLevelFrame.addComponentListener(new ComponentAdapter() {

            @Override
			public void componentResized(ComponentEvent e)
            {
                Frame f = (Frame) e.getSource();
                int newWidth = f.getWidth() < f.getMinimumSize().width ? f
                        .getMinimumSize().width : f.getWidth();
                int newHeight = f.getHeight() < f.getMinimumSize().height ? f
                        .getMinimumSize().height : f.getHeight();
                f.setSize(newWidth, newHeight);
            }
        });

        topLevelFrame.addWindowListener(new WindowAdapter() {

            @Override
			public void windowClosing(WindowEvent e)
            {
                System.exit(0);
            }
        });
    }

    @Override
    public void set_Width(int p)
    {
    	super.set_Width(p);
    	 topLevelFrame.setSize(p, topLevelFrame.getHeight());
    }
    
    @Override
    public void set_Height(int p)
    {
    	super.set_Height(p);
        topLevelFrame.setSize(topLevelFrame.getWidth(),p);
    }

    public Frame getFrame()
    {
        return topLevelFrame;
    }



    public void set_ClientSize(Size s)
    {
        component.setSize(s.x, s.y);
    }



    public void set_MinimumSize(Size s)
    {
        Dimension d = new Dimension(s.x, s.y);
        component.setMinimumSize(d);
    }



    public void set_AutoScaleBaseSize(Size s)
    {
        // TODO not implemented yet
    }



    @Override
    public void set_Text(String text)
    {
        topLevelFrame.setTitle(text.value);
    }



    @Override
    public String get_Text()
    {
        return new String(topLevelFrame.getTitle());
    }
}
