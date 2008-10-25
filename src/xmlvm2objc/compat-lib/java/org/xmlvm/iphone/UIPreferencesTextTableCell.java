
package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.internal.Simulator;



public class UIPreferencesTextTableCell
    extends UIPreferencesTableCell
{

    private String text;



    public UIPreferencesTextTableCell()
    {
        text = "";
        Simulator.addKeyListener(this);
    }



    public void setValue(String value)
    {
        text = value;
    }



    public String getValue()
    {
        return text;
    }



    public void keyTyped(char key)
    {
        if (key == '\b' && !text.equals(""))
            text = text.substring(0, text.length() - 1);
        else
            text += key;
        Simulator.redrawDisplay();
    }



    public void drawRect(CGRect rect)
    {
        super.drawRect(rect);
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        g.setColor(Color.BLACK);
        FontMetrics fm = g.getFontMetrics();
        int x = (int) (displayRect.origin.x + viewRect.size.width / 2);
        int y = (int) displayRect.origin.y
                + ((int) viewRect.size.height + fm.getHeight()) / 2
                - fm.getDescent();
        g.drawString(text, x, y);
        x += fm.stringWidth(text);
        g.drawLine(x, y - fm.getHeight(), x, y);

    }
}
