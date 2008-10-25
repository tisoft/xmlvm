
package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.FontMetrics;
import java.awt.Graphics2D;



public class UITextLabel
    extends UIView
{

    private String text;



    public UITextLabel(CGRect rect)
    {
        super(rect);
    }



    public void setText(String text)
    {
        this.text = text;
    }



    public void setCentersHorizontally(boolean b)
    {
        // label.setHorizontalAlignment(b ? SwingConstants.CENTER
        // : SwingConstants.LEFT);
    }



    public void drawRect(CGRect r)
    {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        g.setBackground(Color.WHITE);
        g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height);
        g.setColor(Color.BLACK);
        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(text);
        int height = fm.getHeight();
        // TODO Centering hard coded for now
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        x += ((int) viewRect.size.width - width) / 2;
        y += ((int) viewRect.size.height - height) / 2;
        g.drawString(text, x, y);
    }
}
