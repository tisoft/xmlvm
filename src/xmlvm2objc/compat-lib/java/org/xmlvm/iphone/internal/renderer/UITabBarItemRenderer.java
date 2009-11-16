
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.RadialGradientPaint;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UITabBarItem;
import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.UITabBarItemView;

/**
 * 
 * @author teras
 */
public class UITabBarItemRenderer extends UIBarItemRenderer {

    private static final int TOP_OFFSET  = 5;
    private static final int TEXT_HEIGHT = 14;

    public UITabBarItemRenderer(UITabBarItem item, UITabBarItemView view) {
        super(item, view);
    }

    protected void drawButton(Graphics2D g, CGRect rect) {
        int x = (int) rect.origin.x;
        int y = (int) rect.origin.y;
        int w = (int) rect.size.width;
        int h = (int) rect.size.height;

        UIImage img = item.getImage();
        if (img != null)
            g.drawImage(img.xmlvmGetImage(), (int) (x + (w - img.getSize().width) / 2), y
                    + TOP_OFFSET, Simulator.getDisplay());
        rect.origin.y = h - TEXT_HEIGHT;
        rect.size.height = TEXT_HEIGHT;
        g.setPaint(view.getTitleColorForState(0).xmlvmGetPaint());
        drawTitle(g, rect);

        if (isButtonPressed()) {
            Color[] c = new Color[2];
            c[0] = new Color(255, 255, 255, 150);
            c[1] = new Color(255, 255, 255, 0);
            float[] dist = { 0.0f, 1.0f };
            RadialGradientPaint paint = new RadialGradientPaint(x + w / 2, y + h / 2, Math.min(
                    h / 2, w / 2), dist, c);
            g.setPaint(paint);
            g.fillRect(x, y, w, h);
        }
    }
}
