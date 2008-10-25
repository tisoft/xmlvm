
package org.xmlvm.iphone;

import java.awt.FontMetrics;
import java.awt.Graphics2D;



public class UISimpleTableCell
    extends UITableCell
{

    final static private int INSET = 5;
    public String            title;



    public UISimpleTableCell(String title)
    {
        this.title = title;
    }



    public void drawRect(CGRect rect)
    {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        super.drawCellBackground(g, displayRect);
        FontMetrics fm = g.getFontMetrics();
        int x = (int) displayRect.origin.x + INSET;
        int y = (int) displayRect.origin.y
                + ((int) viewRect.size.height + fm.getHeight()) / 2
                - fm.getDescent();
        g.drawString(title, x, y);
    }

}
