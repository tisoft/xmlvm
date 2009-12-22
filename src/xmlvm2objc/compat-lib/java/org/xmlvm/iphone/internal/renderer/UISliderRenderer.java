
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UISlider;

/**
 * 
 * @author teras
 */
public class UISliderRenderer extends UIViewRenderer<UISlider> {

    private static final int  THICKNESS            = 8;
    private static final int  KNOBSIZE             = 20;
    public static final float SLIDER_BUTTON_WIDTH  = 114.0f;
    public static final float SLIDER_BUTTON_HEIGHT = 22.0f;

    public UISliderRenderer(UISlider view) {
        super(view);
    }

    public void paint() {
        float minimum = view.getMinimumValue();
        float maximum = view.getMaximumValue();
        float value = view.getValue();

        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;
        int v = (int) (displayRect.size.width * (value - minimum) / (maximum - minimum));
        int barOffset = (h - THICKNESS) / 2;
        int knobOffsetY = (h - KNOBSIZE) / 2;
        int knobOffsetX = v - KNOBSIZE / 2;
        if (knobOffsetX < 0)
            knobOffsetX = 0;
        if ((knobOffsetX + KNOBSIZE) > w)
            knobOffsetX = w - KNOBSIZE;

        if (view.getBackgroundColor() != UIColor.clearColor) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(x, y, w, h);
        }

        GradientPaint blueGradient = new GradientPaint(0, y + barOffset, new Color(42, 93, 148), 0,
                y + barOffset + THICKNESS, new Color(104, 165, 245));
        GradientPaint whiteGradient = new GradientPaint(0, y + barOffset, new Color(188, 188, 188),
                0, y + barOffset + THICKNESS, Color.WHITE);
        GradientPaint buttonGradient = new GradientPaint(0, y + knobOffsetY, new Color(188, 188,
                188), 0, y + h - knobOffsetY, Color.WHITE);

        g.setPaint(blueGradient);
        g.fillRoundRect(x + 2, y + barOffset, v - 2, THICKNESS, THICKNESS, THICKNESS);
        g.setColor(new Color(42, 93, 148));
        g.drawRoundRect(x + 2, y + barOffset, v - 2, THICKNESS, THICKNESS, THICKNESS);

        g.setPaint(whiteGradient);
        g.fillRoundRect(x + v, y + barOffset, w - v - 2, THICKNESS, THICKNESS, THICKNESS);
        g.setColor(new Color(147, 147, 147));
        g.drawRoundRect(x + v, y + barOffset, w - v - 2, THICKNESS, THICKNESS, THICKNESS);

        g.setPaint(buttonGradient);
        g.fillRoundRect(x + knobOffsetX, y + knobOffsetY, KNOBSIZE, KNOBSIZE, KNOBSIZE, KNOBSIZE);
        g.setColor(new Color(147, 147, 147));
        g.drawRoundRect(x + knobOffsetX, y + knobOffsetY, KNOBSIZE, KNOBSIZE, KNOBSIZE, KNOBSIZE);
    }
}
