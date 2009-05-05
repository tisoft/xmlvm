package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

public class UIButton extends UIView {

    private static final Font DEFAULT_FONT = new Font("Dialog", Font.PLAIN, 14);

    private int    buttonType;
    private String title;
    private Font   font;

    public UIButton(int buttonType) {
        super(new CGRect(0, 0, 0, 0));
        init(buttonType);
    }

    public UIButton(int buttonType, CGRect rect) {
        super(rect);
        init(buttonType);
    }

    public void drawRect(CGRect r) {
        setTransformForThisView();
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();

        g.setColor(Color.BLACK);
        g.fillRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height);

        drawTitle(g, displayRect);
        restoreLastTransform();
    }

    private void drawTitle(Graphics2D g, CGRect displayRect) {
        g.setColor(Color.WHITE);

        g.setFont(font != null ? font : DEFAULT_FONT);

        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(title);
        int height = fm.getHeight();
        int descent = fm.getDescent();

        int x = (int) displayRect.origin.x;
        x += ((int) frame.size.width - width) / 2;

        int y = (int) displayRect.origin.y;
        y += ((int) frame.size.height - height) / 2 + height - descent;

        g.drawString(title, x, y);
    }

    public void setTitleForState(String title, int state) {
        this.title = title;
        setNeedsDisplay();
    }

    public void setFont(Font font) {
        this.font = font;
        setNeedsDisplay();
    }

    private void init(int buttonType) {
        this.buttonType = buttonType;
    }
}
