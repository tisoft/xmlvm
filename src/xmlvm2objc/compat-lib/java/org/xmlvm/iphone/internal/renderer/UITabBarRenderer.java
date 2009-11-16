
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UITabBar;

/**
 * 
 * @author teras
 */
public class UITabBarRenderer extends UIViewRenderer<UITabBar> {

    private final static Color TOPCOLOR      = new Color(46, 46, 46);
    private final static Color BELOWLINE     = new Color(67, 67, 67);

    public final static int    TABBAR_HEIGHT = 49;

    public UITabBarRenderer(UITabBar view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect rect = view.getFrame();
        int x = (int) rect.origin.x;
        int y = (int) rect.origin.y;
        int w = (int) rect.size.width;
        int h = (int) rect.size.height;
        GradientPaint paint = new GradientPaint(0, y, TOPCOLOR, x, y + h, Color.BLACK);
        g.setPaint(paint);
        g.fillRect(x, y, w, h);
        g.setColor(Color.BLACK);
        g.drawLine(0, y, x + w, y);
        g.setColor(BELOWLINE);
        g.drawLine(0, y + 1, x + w, y + 1);
    }
}
