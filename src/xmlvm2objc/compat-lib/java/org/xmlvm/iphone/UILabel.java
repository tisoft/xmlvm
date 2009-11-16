package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UILabelRenderer;

public class UILabel extends UIView {

    private String  text;
    private UIFont  font;
    private UIColor textColor;
    private int     textAlignment;

    public UILabel() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UILabel(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UILabelRenderer(this));
        setFont(UIFont.fontWithNameSize("Arial", 16));
        setTextColor(UIColor.blackColor);
        setBackgroundColor(UIColor.whiteColor);
        setTextAlignment(UITextAlignment.Left);
        setText("");
    }

    public void setText(String text) {
        this.text = text;
        this.setNeedsDisplay();
    }

    public String getText() {
        return text;
    }

    public void setFont(UIFont font) {
        this.font = font;
        this.setNeedsDisplay();
    }

    public UIFont getFont() {
        return this.font;
    }

    public void setTextColor(UIColor textColor) {
        this.textColor = textColor;
        this.setNeedsDisplay();
    }

    public UIColor getTextColor() {
        return textColor;
    }

    public void setTextAlignment(int UITextAlignment) {
        this.textAlignment = UITextAlignment;
        this.setNeedsDisplay();
    }

    public int getTextAlignment() {
        return textAlignment;
    }
}
