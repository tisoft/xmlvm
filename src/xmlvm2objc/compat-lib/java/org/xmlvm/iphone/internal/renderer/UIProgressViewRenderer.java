
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIProgressView;
import org.xmlvm.iphone.UIProgressViewStyle;

/**
 * 
 * @author teras
 */
public class UIProgressViewRenderer extends UIViewRenderer<UIProgressView> {

    public static final float  kMinimum            = 0.0f;
    public static final float  kMaximum            = 1.0f;
    public static final float  kProgressViewWidth  = 150.0f;
    public static final float  kProgressViewHeight = 8.0f;
    private static final float kColorOffset        = 2.0f;

    public UIProgressViewRenderer(UIProgressView view) {
        super(view);
    }

    public void paint() {
        float progress = view.getProgress();
        int style = view.getProgressViewStyle();

        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;

        if (view.getBackgroundColor() != UIColor.clearColor) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(x, y, w, h);
        }
        int v = (int) (((displayRect.size.width - kProgressViewHeight) * progress) + kProgressViewHeight);
        GradientPaint blueLightGradient = new GradientPaint(0, y + kColorOffset, new Color(104,
                165, 245), 0, y + h - kColorOffset, new Color(42, 93, 148));
        GradientPaint blueDarkGradient = new GradientPaint(0, y + kColorOffset, new Color(34, 62,
                99), 0, y + h - kColorOffset, new Color(75, 107, 150));
        GradientPaint whiteGradient = new GradientPaint(0, y + kColorOffset, new Color(188, 188,
                188), 0, y + h - kColorOffset, Color.WHITE);

        if (style == UIProgressViewStyle.Default) {
            g.setPaint(whiteGradient);
            g.fillRoundRect(x, y, w, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
            g.setColor(new Color(147, 147, 147));
            g.drawRoundRect(x, y, w, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
        } else {
            g.setPaint(blueDarkGradient);
            g.fillRoundRect(x, y, w, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
            g.setColor(new Color(34, 62, 99));
            g.drawRoundRect(x, y, w, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
        }

        if (progress > 0.00001f)
            if (style == UIProgressViewStyle.Default) {
                g.setPaint(blueLightGradient);
                g.fillRoundRect(x, y, v, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
                g.setColor(new Color(42, 93, 148));
                g.drawRoundRect(x, y, v, h, (int) kProgressViewHeight, (int) kProgressViewHeight);
            } else {
                g.setPaint(whiteGradient);
                g.fillRoundRect(x + 1, y + 1, v - 1, h - 1, (int) kProgressViewHeight,
                        (int) kProgressViewHeight);
            }
    }
}
