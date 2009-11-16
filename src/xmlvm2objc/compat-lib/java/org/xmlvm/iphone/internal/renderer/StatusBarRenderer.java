
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.internal.StatusBar;

public class StatusBarRenderer extends UIViewRenderer<StatusBar> {

    public StatusBarRenderer(StatusBar view) {
        super(view);
    }

    public void paint() {
        if (view.getFrame().size.height == 0)
            return;
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;
        GradientPaint grayGradient = new GradientPaint(0, y, new Color(0xeef6f9), 0, y + h - 1,
                new Color(0xbdc5c8));
        g.setPaint(grayGradient);
        g.fillRect(x, y, w, h - 1);
        g.setPaint(new Color(0x5b6268));
        g.drawLine(x, y + h - 1, w, y + h - 1);
    }
}
