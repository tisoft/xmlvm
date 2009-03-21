
package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.FontMetrics;
import java.awt.GradientPaint;
import java.awt.Graphics2D;

import org.xmlvm.iphone.internal.*;



public class UISwitch
    extends UIView
    implements GestureListener
{

    private boolean   isOn = false;
    final private int INSET = 5;



    public UISwitch(CGRect rect)
    {
        super(rect);
        rect.size.width = 80;
        rect.size.height = 20;
        setFrame(rect);
        Simulator.addGestureListener(this);
    }



    public void setOn(boolean on)
    {
    	this.isOn = on;
    }
    
    
    
    public boolean isOn()
    {
    	return isOn;
    }



    public void drawRect(CGRect rect)
    {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        GradientPaint blueGradient = new GradientPaint(
                0,
                (int) displayRect.origin.y,
                new Color(61, 89, 171),
                0,
                (int) (displayRect.origin.y + displayRect.size.height),
                new Color(100, 149, 237));
        GradientPaint whiteGradient = new GradientPaint(
                0,
                (int) displayRect.origin.y,
                Color.LIGHT_GRAY,
                0,
                (int) (displayRect.origin.y + displayRect.size.height),
                Color.WHITE);
        GradientPaint grayGradient = new GradientPaint(
                0,
                (int) displayRect.origin.y,
                Color.GRAY,
                0,
                (int) (displayRect.origin.y + displayRect.size.height),
                Color.LIGHT_GRAY);
        g.setPaint(isOn ? blueGradient : whiteGradient);
        g.fillRoundRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height,
                INSET, INSET);
        g.setColor(Color.LIGHT_GRAY);
        g.drawRoundRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height,
                INSET, INSET);
        CGRect knob = new CGRect(displayRect);
        float halfWidth = knob.size.width / 2;
        knob.size.width = halfWidth;
        if (isOn)
            knob.origin.x += halfWidth;
        g.setPaint(grayGradient);
        g.fillRoundRect((int) knob.origin.x, (int) knob.origin.y,
                (int) knob.size.width, (int) knob.size.height, INSET, INSET);
        String label = "ON";
        knob.origin.x = displayRect.origin.x;
        g.setColor(Color.WHITE);
        if (isOn) {
            knob.origin.x += halfWidth;
            g.setColor(Color.GRAY);
            label = "OFF";
        }
        FontMetrics fm = g.getFontMetrics();
        g.drawString(label, knob.origin.x + INSET, knob.origin.y
                + knob.size.height - fm.getLeading() - fm.getDescent());
    }



    public void mouseClicked(int x, int y)
    {
        CGRect rect = getDisplayRect();
        int inX = x - (int) rect.origin.x;
        int inY = y - (int) rect.origin.y;
        if (inX >= 0 && inX < viewRect.size.width / 2 && inY >= 0
                && inY < viewRect.size.height)
            setOn(true);
        if (inX > viewRect.size.width / 2 && inX < viewRect.size.width
                && inY >= 0 && inY < viewRect.size.height)
            setOn(false);
        Simulator.redrawDisplay();
    }



    public void gestureDragged(int dx, int dy)
    {
        // TODO Auto-generated method stub

    }



}
