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

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.HashMap;
import java.util.Map;

import javax.swing.JButton;

import System.*;
import System.Object;
import System.String;
import System.Drawing.Point;
import System.Drawing.Size;
import System.Drawing.Color;


public abstract class Control
    extends Object
    implements ActionListener
{



    public class ControlCollection
        extends Object
    {

        private Container               awtContainer;
        private Map<Component, Control> mapAWT2WF = new HashMap<Component, Control>();



        public ControlCollection(Control control)
        {
            // control must be a container
            this.awtContainer = (Container) control.getAWTComponent();
        }



        public void Add(Control c)
        {
            Component awtComp = c.getAWTComponent();
            this.mapAWT2WF.put(awtComp, c);
            this.awtContainer.add(awtComp);
        }



        public Control getWinFormsControl(Component awtComp)
        {
            return this.mapAWT2WF.get(awtComp);
        }
    }



    protected Component       component         = null;
    private ControlCollection controlCollection = null;
    private AnchorStyles      styles            = null;
    private EventHandler clickHandler = null;



    public Control()
    {
        this.styles = new AnchorStyles(AnchorStyles.None);
    }



    public Component getAWTComponent()
    {
        return component;
    }



    public ControlCollection get_Controls()
    {
        if (controlCollection == null)
            controlCollection = new ControlCollection(this);
        return controlCollection;
    }



    public void add_TextChanged(EventHandler handler)
    {
    
    }
    public void add_Click(EventHandler handler)
    {
      //TODO: Verify fix 
    	this.clickHandler = handler;
        if (component instanceof JButton)
            ((JButton) component).addActionListener(this);
        else {
            System.err
                    .println("add_Click: component does not support click event");
            System.exit(-1);
        }
    }


    public void SetBounds(int x, int y, int w, int h)
    {
    	component.setBounds(x,y,w,h);
    }
    public void set_Width(int p)
    {
    component.setBounds(component.getX(),component.getY(),p,component.getHeight());
    }
    
    public void set_Height(int p)
    {
    component.setBounds(component.getX(),component.getY(),component.getWidth() , p);
    }

    public void set_Location(Point p)
    {  
        Dimension d = component.getSize();
        component.setBounds(p.x, p.y, d.width, d.height);
    }

    public void set_BackColor(Color c)
    {
    	component.setBackground(c.mycolor);
    }

    
    public void set_Size(Size s)
    {
        component.setSize(s.x, s.y);
    }



    public void set_TabIndex(int i)
    {
        // TODO to be implemented
    }



    public void set_Anchor(AnchorStyles styles)
    {
        this.styles = styles;
    }



    public AnchorStyles get_Anchor()
    {
        return this.styles;
    }


    String name;
    public void set_Name(String name)
    {
        this.name = name;
    }



    public void ResumeLayout()
    {
    	
    }
    public void ResumeLayout(boolean update)
    {
    	
    }
    public void PerformLayout()
    {
    	
    }
    abstract public void set_Text(String text);



    abstract public String get_Text();


  
    DockStyle dock = new DockStyle(DockStyle.None);
    
    public void set_Dock(DockStyle toSet)
    {
    	dock = toSet;
    }
    
    public DockStyle get_Dock()
    {
    return dock;
    }
    
    public void Dispose()
    {
    	
    }
    public void SuspendLayout()
    {
    
    }

    public void actionPerformed(ActionEvent event)
    {
    	this.clickHandler.Invoke(this, null);
    }
}
