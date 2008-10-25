
package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Graphics2D;



public class CGContext
{

    static public CGContext theContext = null;

    public Graphics2D       graphicsContext;



    private CGContext(Graphics2D g)
    {
        graphicsContext = g;
    }



    public static void setGraphicsContext(Graphics2D g)
    {
        theContext = new CGContext(g);
    }



    public static CGContext UICurrentContext()
    {
        return theContext;
    }



    public void setFillColor(float[] color)
    {
        graphicsContext.setColor(new Color(color[0], color[1], color[2]));
    }



    public void fillRect(CGRect rect)
    {
        graphicsContext.fillRect((int) rect.origin.x, (int) rect.origin.y,
                (int) rect.size.width, (int) rect.size.height);
    }

}
