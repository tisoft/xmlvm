
package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;



public class UIPreferencesTableCell
    extends UIView
{

    final private int INSET       = 10;
    private String    title       = "";
    private boolean   isGroupCell = false;



    public void setTitle(String title)
    {
        this.title = title;
    }



    public void setEnabled(boolean flag)
    {

    }



    public void isGroupCell(boolean flag)
    {
        this.isGroupCell = flag;
    }



    public void drawRect(CGRect rect)
    {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        g.setBackground(Color.WHITE);
        g.setColor(isGroupCell ? Color.GRAY : Color.BLACK);
        FontMetrics fm = g.getFontMetrics();
        int x = (int) displayRect.origin.x + INSET;
        int y = (int) displayRect.origin.y
                + ((int) viewRect.size.height + fm.getHeight()) / 2
                - fm.getDescent();
        g.drawString(title, x, y);
        super.drawRect(rect);
    }
}
