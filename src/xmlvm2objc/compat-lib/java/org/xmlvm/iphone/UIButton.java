package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

public class UIButton extends UIView {

    private static final Font  DEFAULT_FONT               = new Font("Arial", Font.BOLD, 14);
    private static final Color DEFAULT_TITLE_COLOR        = new Color(0x59709c);
    private static final Color DEFAULT_TITLE_SHADOW_COLOR = Color.DARK_GRAY;

    private int                buttonType;
    private String             title;
    private Color              titleColor;
    private Color              titleShadowColor;
    private CGSize             titleShadowOffset;
    private Font               font;

    private UIButton(int buttonType) {
        super(new CGRect(0, 0, 0, 0));
        init(buttonType);
    }

    public static UIButton buttonWithType(int buttonType) {
        return new UIButton(buttonType);
    }

    public void drawRect(CGRect r) {
        setTransformForThisView();
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();

        switch (buttonType) {
        case UIButtonType.UIButtonTypeRoundedRect:
            drawRoundedRectButton(g, displayRect);
            break;

        default:
            g.setColor(Color.BLACK);
            g.fillRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                    (int) displayRect.size.width, (int) displayRect.size.height);
            drawTitle(g, displayRect);
        }

        restoreLastTransform();
    }

    private void drawRoundedRectButton(Graphics2D g, CGRect displayRect) {
        g.setColor(Color.WHITE);
        g.fillRoundRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                    (int) displayRect.size.width, (int) displayRect.size.height, 16, 16);

        g.setColor(new Color(0x9f9f9f));
        g.drawRoundRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                    (int) displayRect.size.width, (int) displayRect.size.height, 16, 16);
        
        drawTitle(g, displayRect);
}

    private void drawTitle(Graphics2D g, CGRect displayRect) {
        
        g.setFont(font != null ? font : DEFAULT_FONT);
        
        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(title);
        int height = fm.getHeight();
        int descent = fm.getDescent();

        int x = (int) displayRect.origin.x;
        x += ((int) frame.size.width - width) / 2;

        int y = (int) displayRect.origin.y;
        y += ((int) frame.size.height - height) / 2 + height - descent;

        if (titleShadowOffset != null) {
            g.setColor(titleShadowColor != null ? titleShadowColor : DEFAULT_TITLE_SHADOW_COLOR);
            g.drawString(title, x + titleShadowOffset.width, y + titleShadowOffset.height);
        }

        g.setColor(titleColor != null ? titleColor : DEFAULT_TITLE_COLOR);
        g.drawString(title, x, y);
    }

    private void init(int buttonType) {
        this.buttonType = buttonType;
    }

    public void setFont(Font font) {
        this.font = font;
        setNeedsDisplay();
    }

    public void setTitle(String title, int state) {
        this.title = title;
        setNeedsDisplay();
    }

    public void setTitleColor(Color titleColor, int state) {
        this.titleColor = titleColor;
        setNeedsDisplay();
    }

    public void setTitleShadowColor(Color titleShadowColor, int state) {
        this.titleShadowColor = titleShadowColor;
        setNeedsDisplay();
    }

    public void setTitleShadowOffset(CGSize titleShadowOffset, int state) {
        this.titleShadowOffset = titleShadowOffset;
        setNeedsDisplay();
    }
}
