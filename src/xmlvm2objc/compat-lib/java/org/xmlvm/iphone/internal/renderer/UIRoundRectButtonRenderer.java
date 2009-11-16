
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.Paint;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIColor;

/**
 * 
 * @author teras
 */
public class UIRoundRectButtonRenderer extends UIButtonRenderer {

    private static final Color DEFAULT_TITLE_COLOR = new Color(56, 84, 135);

    public UIRoundRectButtonRenderer(UIButton view) {
        super(view);
    }

    protected void drawButton(Graphics2D g, CGRect displayRect) {
        Paint borderColor;
        Paint fillColor;
        Paint titleColor;

        UIButton bt = (UIButton) view;
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width - 2;
        int h = (int) displayRect.size.height - 2;
        if (bt.getBackgroundColor() != UIColor.clearColor) {
            g.setPaint(bt.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(x, y, w + 1, h + 1);
        }

        if (buttonPressed) {
            borderColor = new Color(0x9f9f9f);
            fillColor = new GradientPaint(0, y, new Color(5, 140, 245), 0, y
                    + displayRect.size.height - 1, new Color(1, 96, 230));
            titleColor = Color.WHITE;
        } else {
            borderColor = new Color(0x9f9f9f);
            fillColor = Color.WHITE;
            titleColor = bt.getTitleColorForState(1) != null ? bt.getTitleColorForState(1)
                    .xmlvmGetPaint() : DEFAULT_TITLE_COLOR;
        }

        g.setPaint(fillColor);
        g.fillRoundRect(x, y, w, h, edgeDiameter, edgeDiameter);

        g.setPaint(borderColor);
        g.drawRoundRect(x, y, w, h, edgeDiameter, edgeDiameter);

        if (bt.getTitleForState(0) != null) {
            g.setPaint(titleColor);
            drawTitle(g, displayRect);
        }
    }
}
