package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.RenderingHints;
import java.awt.geom.Path2D;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class UIButton extends UIControl {

    private static final Font  DEFAULT_FONT               = new Font("Arial", Font.BOLD, 14);
    private static final Color DEFAULT_TITLE_COLOR        = new Color(0x59709c);
    private static final Color DEFAULT_TITLE_SHADOW_COLOR = Color.DARK_GRAY;

    private boolean            buttonPressed              = false;
    private int                buttonType;
    private String             title;
    private Color              titleColor;
    private Color              titleShadowColor;
    private CGSize             titleShadowOffset;
    private Font               font;
    private int                edgeDiameter               = 16;

    private Color              upperLightColor            = null;
    private Color              upperDarkColor             = null;
    private Color              lowerLightColor            = null;
    private Color              lowerDarkColor             = null;

    private Color              upperLightPressedColor     = null;
    private Color              upperDarkPressedColor      = null;
    private Color              lowerLightPressedColor     = null;
    private Color              lowerDarkPressedColor      = null;

    private UIButton(int buttonType) {
        super();

        this.buttonType = buttonType;
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
            if (backgroundColor == null) {
                drawRoundedRectButton(g, displayRect);
            } else {
                drawColoredButton(g, displayRect);
            }
            break;

        default:
            g.setColor(Color.BLACK);
            g.fillRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                    (int) displayRect.size.width, (int) displayRect.size.height);
            g.setColor(Color.WHITE);
            drawTitle(g, displayRect);
        }

        restoreLastTransform();
    }

    private void drawRoundedRectButton(Graphics2D g, CGRect displayRect) {
        Paint borderColor;
        Paint fillColor;
        Paint titleColor;

        if (buttonPressed) {
            borderColor = new Color(0x9f9f9f);
            fillColor = new GradientPaint(0, displayRect.origin.y, new Color(5, 140, 245), 0,
                    displayRect.origin.y + displayRect.size.height - 1, new Color(1, 96, 230));
            titleColor = Color.WHITE;
        } else {
            borderColor = new Color(0x9f9f9f);
            fillColor = Color.WHITE;
            titleColor = this.titleColor != null ? this.titleColor : DEFAULT_TITLE_COLOR;
        }

        g.setPaint(fillColor);
        g.fillRoundRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height, edgeDiameter,
                edgeDiameter);

        g.setPaint(borderColor);
        g.drawRoundRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height, edgeDiameter,
                edgeDiameter);

        g.setPaint(titleColor);
        drawTitle(g, displayRect);
    }

    private void drawColoredButton(Graphics2D g, CGRect displayRect) {

        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        // Draw the button's upper part, so that the shape's interior has the
        // specified size
        // (which means make its outline one pixel wider/higher)
        Path2D upperShape = new Path2D.Double();
        upperShape.moveTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height / 2);
        upperShape.lineTo(displayRect.origin.x, displayRect.origin.y + edgeDiameter / 2);
        upperShape.quadTo(displayRect.origin.x, displayRect.origin.y, displayRect.origin.x
                + edgeDiameter / 2, displayRect.origin.y);
        upperShape.lineTo(displayRect.origin.x + displayRect.size.width - edgeDiameter / 2 + 1,
                displayRect.origin.y);
        upperShape.quadTo(displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y,
                displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y
                        + edgeDiameter / 2);
        upperShape.lineTo(displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y
                + displayRect.size.height / 2);
        upperShape.closePath();

        GradientPaint lightGradient = new GradientPaint(0, displayRect.origin.y,
                buttonPressed ? upperLightPressedColor : upperLightColor, 0, displayRect.origin.y
                        + displayRect.size.height / 2, buttonPressed ? upperDarkPressedColor
                        : upperDarkColor);
        g.setPaint(lightGradient);
        g.fill(upperShape);

        // Draw the button's lower part, so that the shape's interior has the
        // specified size
        // (which means make its outline one pixel wider/higher)
        Path2D lowerShape = new Path2D.Double();
        lowerShape.moveTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height / 2);
        lowerShape.lineTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height
                - edgeDiameter / 2 + 1);
        lowerShape.quadTo(displayRect.origin.x, displayRect.origin.y + displayRect.size.height + 1,
                displayRect.origin.x + edgeDiameter / 2, displayRect.origin.y
                        + displayRect.size.height + 1);
        lowerShape.lineTo(displayRect.origin.x + displayRect.size.width - edgeDiameter / 2 + 1,
                displayRect.origin.y + displayRect.size.height + 1);
        lowerShape.quadTo(displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y
                + displayRect.size.height + 1, displayRect.origin.x + displayRect.size.width + 1,
                displayRect.origin.y + displayRect.size.height - edgeDiameter / 2 + 1);
        lowerShape.lineTo(displayRect.origin.x + displayRect.size.width + 1, displayRect.origin.y
                + displayRect.size.height / 2);
        lowerShape.closePath();

        GradientPaint darkGradient = new GradientPaint(0, displayRect.origin.y
                + displayRect.size.height + 1, buttonPressed ? lowerDarkPressedColor
                : lowerDarkColor, 0, displayRect.origin.y + displayRect.size.height + 1,
                buttonPressed ? lowerLightPressedColor : lowerLightColor);
        g.setPaint(darkGradient);
        g.fill(lowerShape);

        // Draw durrounding dark gray line
        g.setPaint(Color.DARK_GRAY);
        g.drawRoundRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height - 2, edgeDiameter,
                edgeDiameter);

        // Draw upper light line
        Path2D upperLineShape = new Path2D.Double();
        upperLineShape.moveTo(displayRect.origin.x, displayRect.origin.y + edgeDiameter / 2);
        upperLineShape.quadTo(displayRect.origin.x, displayRect.origin.y, displayRect.origin.x
                + edgeDiameter / 2, displayRect.origin.y);
        upperLineShape.lineTo(displayRect.origin.x + displayRect.size.width - edgeDiameter / 2,
                displayRect.origin.y);
        upperLineShape.quadTo(displayRect.origin.x + displayRect.size.width, displayRect.origin.y,
                displayRect.origin.x + displayRect.size.width, displayRect.origin.y + edgeDiameter
                        / 2);
        g.setPaint(Color.WHITE);
        g.draw(upperLineShape);

        g.setPaint(titleColor);
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
            Paint p = g.getPaint();
            g.setPaint(titleShadowColor != null ? titleShadowColor : DEFAULT_TITLE_SHADOW_COLOR);
            g.drawString(title, x + titleShadowOffset.width, y + titleShadowOffset.height);
            g.setPaint(p);
        }

        g.drawString(title, x, y);
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

    public void setEdgeDiameter(int edgeDiameter) {
        this.edgeDiameter = edgeDiameter;
    }

    @Override
    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        if (touchedInsideButton(touches)) {
            buttonPressed = true;
            setNeedsDisplay();
        }
    }

    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        if (buttonPressed && touchedInsideButton(touches)) {
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & UIControlEventTouchUpInside) > 0) {
                    e.getValue().raiseEvent();
                }
            }
        }

        buttonPressed = false;
        setNeedsDisplay();
    }

    private boolean touchedInsideButton(Set<UITouch> touches) {
        UITouch t = touches.iterator().next();
        CGPoint p = t.locationInView(this);
        CGRect r = this.getBounds();
        return p.x < 0 || p.y < 0 || p.x > r.size.width || p.y > r.size.height ? false : true;
    }

    @Override
    public void setBackgroundColor(Color backgroundColor) {
        super.setBackgroundColor(backgroundColor);
        deriveButtonColors();
    }

    @Override
    public void setAlpha(float alpha) {
        super.setAlpha(alpha);
        deriveButtonColors();
    }

    private void deriveButtonColors() {
        upperDarkColor = new Color((int) (Math.min(backgroundColor.getRed() * 1.125, 255)),
                (int) Math.min(backgroundColor.getGreen() * 1.125, 255), (int) Math.min(
                        backgroundColor.getBlue() * 1.125, 255), (int) alpha);
        lowerDarkColor = new Color((int) (backgroundColor.getRed() * 0.875), (int) (backgroundColor
                .getGreen() * 0.875), (int) (backgroundColor.getBlue() * 0.875), (int) alpha);
        upperLightColor = new Color((int) Math.min(upperDarkColor.getRed() * 1.1, 255), (int) Math
                .min(upperDarkColor.getGreen() * 1.1, 255), (int) Math.min(
                upperDarkColor.getBlue() * 1.1, 255), (int) alpha);
        lowerLightColor = new Color((int) (lowerDarkColor.getRed() * 1.1), (int) (lowerDarkColor
                .getGreen() * 1.1), (int) (lowerDarkColor.getBlue() * 1.1), (int) alpha);

        upperDarkPressedColor = new Color((int) (upperDarkColor.getRed() * 0.2),
                (int) (upperDarkColor.getGreen() * 0.2), (int) (upperDarkColor.getBlue() * 0.2),
                (int) alpha);
        upperLightPressedColor = new Color((int) (upperLightColor.getRed() * 0.2),
                (int) (upperLightColor.getGreen() * 0.2), (int) (upperLightColor.getBlue() * 0.2),
                (int) alpha);
        lowerDarkPressedColor = new Color((int) (lowerDarkColor.getRed() * 0.1),
                (int) (lowerDarkColor.getGreen() * 0.2), (int) (lowerDarkColor.getBlue() * 0.2),
                (int) alpha);
        lowerLightPressedColor = new Color((int) (lowerLightColor.getRed() * 0.1),
                (int) (lowerLightColor.getGreen() * 0.2), (int) (lowerLightColor.getBlue() * 0.2),
                (int) alpha);
    }
}
