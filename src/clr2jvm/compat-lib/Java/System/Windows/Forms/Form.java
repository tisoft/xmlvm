
package System.Windows.Forms;

import java.awt.*;
import java.awt.event.*;

import javax.swing.UIManager;

import org.xmlvm.clr.WinFormsLayoutManager;

import System.EventArgs;
import System.String;
import System.Drawing.Color;
import System.Drawing.Size;
import System.EventHandler;

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
