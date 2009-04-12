package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

public class UILabel extends UIView {

    private String text;
    private Font   font;
    private Color  fontColor;
    private int    textAlignment;

    public UILabel() {
        super(new CGRect(0, 0, 0, 0));
        init();
    }

    public UILabel(CGRect rect) {
        super(rect);
        init();
    }

    private void init() {
        // Set a default font
        setFont(new Font("Arial", Font.PLAIN, 16));
        setFontColor(Color.BLACK);
        setBackgroundColor(Color.WHITE);
        setTextAlignment(UITextAlignment.UITextAlignmentLeft);
        setText("");
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setFont(Font font) {
        this.font = font;
    }

    // TODO should be called setTextColor
    public void setFontColor(Color fontColor) {
        this.fontColor = fontColor;
    }

    public void setBackgroundColor(Color color) {
        this.backgroundColor = color;
    }

    public void setTextAlignment(int alignment) {
        this.textAlignment = alignment;
    }

    public void drawRect(CGRect r) {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        if (backgroundColor != null) {
            g.setBackground(backgroundColor);
            g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                    (int) displayRect.size.width, (int) displayRect.size.height);
        }
        g.setColor(fontColor);
        g.setFont(font);
        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(text);
        int height = fm.getHeight();
        int descent = fm.getDescent();
        // TODO Centering hard coded for now
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        switch (textAlignment) {
        case UITextAlignment.UITextAlignmentLeft:
            // Do nothing
            break;
        case UITextAlignment.UITextAlignmentCenter:
            x += ((int) frame.size.width - width) / 2;
            break;
        }
        y += ((int) frame.size.height - height) / 2 + height - descent;
        g.drawString(text, x, y);
    }
}
