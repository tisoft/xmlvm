package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UITextView;

public class UITextViewRenderer extends UIViewRenderer<UITextView> {

    private static final int TEXT_LEFT_INSET = 5;

    public UITextViewRenderer(UITextView view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        Font f = view.getFont() != null ? view.getFont().xmlvmGetFont() : getDefaultFont();
        g.setFont(f);
        CGRect displayRect = view.getFrame();
        g.setBackground(Color.WHITE);
        int rectX = (int) displayRect.origin.x;
        int rectY = (int) displayRect.origin.y;
        int rectWidth = (int) displayRect.size.width;
        int rectHeight = (int) displayRect.size.height;
        if (view.getBackgroundColor() != UIColor.clearColor) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(rectX, rectY, rectWidth, rectHeight);
        }

        g.clearRect(rectX, rectY, rectWidth, rectHeight);
        g.setColor(Color.GRAY);
        g.draw3DRect(rectX, rectY, rectWidth, rectHeight, false);

        g.setPaint(view.getTextColor().xmlvmGetPaint());
        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(view.getText());
        int height = fm.getHeight();
        int descent = fm.getDescent();
        int x = (int) displayRect.origin.x + TEXT_LEFT_INSET;
        int y = (int) displayRect.origin.y;
        y += ((int) view.getFrame().size.height - height) / 2 + height - descent;
        g.drawString(view.getText(), x, y);
    }

    private Font getDefaultFont() {
        return UIFont.systemFontOfSize(UIFont.labelFontSize()).xmlvmGetFont();
    }
}
