
package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;

import org.xmlvm.iphone.internal.Simulator;



public class UIImageView
    extends UIView
{

    private UIImage image = null;



    public UIImageView(CGRect rect)
    {
        super(rect);
    }



    public void setImage(UIImage image)
    {
        this.image = image;
    }



    public void drawRect(CGRect r)
    {
        Graphics2D g = CGContext.theContext.graphicsContext;

        // set the background color to black
        g.setColor(Color.BLACK);

        CGRect displayRect = getDisplayRect();
        // fill the rect
        g.fillRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) frame.size.width, (int) frame.size.height);

        // draw the image using the AffineTransform
        AffineTransform trans = new AffineTransform();
        trans.translate(displayRect.origin.x, displayRect.origin.y);
        trans.concatenate(affineTransform);
        g.drawImage(image.image, trans, Simulator.getDisplay());
    }
}
