package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.renderer.UITextFieldRenderer;

public class UITextField extends UIView {

    private String  text;
    private UIFont  font;
    private UIColor textColor;
    private int     borderStyle;

    public UITextField() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UITextField(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UITextFieldRenderer(this));
        font = UIFont.fontWithNameSize("Arial", 16);
        setText("");
        setTextColor(UIColor.blackColor);
        Simulator.addKeyListener(this);
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getText() {
        return this.text;
    }

    public void setTextColor(UIColor color) {
        this.textColor = color;
    }

    public UIColor getTextColor() {
        return textColor;
    }

    public void setBorderStyle(int style) {
        this.borderStyle = style;
    }

    public int getBorderStyle() {
        return borderStyle;
    }

    public UIFont getFont() {
        return font;
    }

    public void setFont(UIFont font) {
        this.font = font;
    }

    /* TODO teras: this has to be removed from here */
    @Override
    public void keyTyped(char key) {
        if (key == '\b' && !text.equals(""))
            text = text.substring(0, text.length() - 1);
        else
            text += key;
        Simulator.redrawDisplay();
    }
}
