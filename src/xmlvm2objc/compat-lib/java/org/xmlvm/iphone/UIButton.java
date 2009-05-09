package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Path2D;

public class UIButton extends UIControl {

    private static final int   DEFAULT_ARC_DIAMETER       = 16;
    private static final int   ALERT_BUTTON_ARC_DIAMETER  = 8;
    private static final Font  DEFAULT_FONT               = new Font("Arial", Font.BOLD, 14);
    private static final Color DEFAULT_TITLE_COLOR        = new Color(0x59709c);
    private static final Color DEFAULT_TITLE_SHADOW_COLOR = Color.DARK_GRAY;

    private int                buttonType;
    private String             title;
    private Color              titleColor;
    private Color              titleShadowColor;
    private CGSize             titleShadowOffset;
    private Font               font;

    private Color              upperLightColor            = null;
    private Color              upperDarkColor             = null;
    private Color              lowerLightColor            = null;
    private Color              lowerDarkColor             = null;

    private UIButton(int buttonType) {
        super();
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

        case UIButtonType.UIButtonTypeAlertLight:
        case UIButtonType.UIButtonTypeAlertDark:
            drawAlertButton(g, displayRect);
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
                (int) displayRect.size.width, (int) displayRect.size.height, DEFAULT_ARC_DIAMETER,
                DEFAULT_ARC_DIAMETER);

        g.setColor(new Color(0x9f9f9f));
        g.drawRoundRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height, DEFAULT_ARC_DIAMETER,
                DEFAULT_ARC_DIAMETER);

        drawTitle(g, displayRect);
    }

    private void drawAlertButton(Graphics2D g, CGRect displayRect) {

        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        // Draw the button's upper part, so that the shape's interior has the
        // specified size
        // (which means make its outline one pixel wider/higher)
        Path2D upperShape = new Path2D.Double();
        upperShape.moveTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height / 2);
        upperShape.lineTo(displayRect.origin.x, displayRect.origin.y + ALERT_BUTTON_ARC_DIAMETER
                / 2);
        upperShape.quadTo(displayRect.origin.x, displayRect.origin.y, displayRect.origin.x
                + ALERT_BUTTON_ARC_DIAMETER / 2, displayRect.origin.y);
        upperShape.lineTo(displayRect.origin.x + displayRect.size.width - ALERT_BUTTON_ARC_DIAMETER
                / 2 + 1, displayRect.origin.y);
        upperShape.quadTo(displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y,
                displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y
                        + ALERT_BUTTON_ARC_DIAMETER / 2);
        upperShape.lineTo(displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y
                + displayRect.size.height / 2);
        upperShape.closePath();

        GradientPaint lightGradient = new GradientPaint(0, displayRect.origin.y, upperLightColor,
                0, displayRect.origin.y + displayRect.size.height / 2, upperDarkColor);
        g.setPaint(lightGradient);
        g.fill(upperShape);

        // Draw the button's lower part, so that the shape's interior has the
        // specified size
        // (which means make its outline one pixel wider/higher)
        Path2D lowerShape = new Path2D.Double();
        lowerShape.moveTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height / 2);
        lowerShape.lineTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height
                - ALERT_BUTTON_ARC_DIAMETER / 2 + 1);
        lowerShape.quadTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height + 1,
                displayRect.origin.x + ALERT_BUTTON_ARC_DIAMETER / 2, displayRect.origin.y
                        + displayRect.size.height + 1);
        lowerShape.lineTo(displayRect.origin.x + displayRect.size.width - ALERT_BUTTON_ARC_DIAMETER
                / 2 + 1, displayRect.origin.y + displayRect.size.height + 1);
        lowerShape.quadTo(displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y
                + displayRect.size.height + 1, displayRect.origin.x + displayRect.size.width + 1,
                displayRect.origin.y + displayRect.size.height - ALERT_BUTTON_ARC_DIAMETER / 2 + 1);
        lowerShape.lineTo(displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y
                + displayRect.size.height / 2);
        lowerShape.closePath();

        GradientPaint darkGradient = new GradientPaint(0, displayRect.origin.y
                + displayRect.size.height + 1, lowerDarkColor, 0, displayRect.origin.y
                + displayRect.size.height + 1, lowerLightColor);
        g.setPaint(darkGradient);
        g.fill(lowerShape);

        // Draw upper light gray line
        g.setPaint(new Color(0xe0e0e0));
        g.drawLine((int) (displayRect.origin.x + ALERT_BUTTON_ARC_DIAMETER / 2),
                (int) displayRect.origin.y, (int) (displayRect.origin.x + displayRect.size.width
                        - ALERT_BUTTON_ARC_DIAMETER / 2 + 1), (int) displayRect.origin.y);

        // Draw surrounding shadow
        Path2D shadowShape = new Path2D.Double();
        shadowShape.moveTo(displayRect.origin.x, displayRect.origin.y + ALERT_BUTTON_ARC_DIAMETER
                / 2);
        shadowShape.lineTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height
                - ALERT_BUTTON_ARC_DIAMETER / 2);
        shadowShape.quadTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height,
                displayRect.origin.x + ALERT_BUTTON_ARC_DIAMETER / 2, displayRect.origin.y
                        + displayRect.size.height);
        shadowShape.lineTo(displayRect.origin.x + displayRect.size.width
                - ALERT_BUTTON_ARC_DIAMETER / 2, displayRect.origin.y + displayRect.size.height);
        shadowShape.quadTo(displayRect.origin.x + displayRect.size.width, displayRect.origin.y
                + displayRect.size.height, displayRect.origin.x + displayRect.size.width,
                displayRect.origin.y + displayRect.size.height - ALERT_BUTTON_ARC_DIAMETER / 2);
        shadowShape.lineTo(displayRect.origin.x + displayRect.size.width, displayRect.origin.y
                + ALERT_BUTTON_ARC_DIAMETER / 2);

        g.setPaint(Color.DARK_GRAY);
        g.draw(shadowShape);

        drawTitle(g, displayRect);
    }

    private void initGradientColors() {
        switch (buttonType) {
        case UIButtonType.UIButtonTypeAlertLight:
            upperLightColor = new Color(0xa4, 0xa7, 0xb7, 191);
            upperDarkColor = new Color(0x85, 0x89, 0x9e, 191);
            lowerLightColor = new Color(0x64, 0x6a, 0x84, 191);
            lowerDarkColor = new Color(0x60, 0x65, 0x80, 191);
            break;

        case UIButtonType.UIButtonTypeAlertDark:
            upperLightColor = new Color(0x7b, 0x7f, 0x96, 191);
            upperDarkColor = new Color(0x57, 0x5e, 0x7a, 191);
            lowerLightColor = new Color(0x3a, 0x42, 0x63, 191);
            lowerDarkColor = new Color(0x38, 0x40, 0x61, 191);
            break;
        }
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

        // Initialize setting for AlertDialog buttons
        if (buttonType == UIButtonType.UIButtonTypeAlertLight
                || buttonType == UIButtonType.UIButtonTypeAlertDark) {
            titleColor = Color.WHITE;
            titleShadowColor = Color.DARK_GRAY;
            titleShadowOffset = new CGSize(0, -1);

            initGradientColors();
        }
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
