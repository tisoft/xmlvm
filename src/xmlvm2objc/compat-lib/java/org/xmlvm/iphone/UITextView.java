package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.renderer.UITextViewRenderer;

public class UITextView extends UIView {

    private String  text;
    private UIFont  font;
    private UIColor textColor;

    public UITextView(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UITextViewRenderer(this));
        font = UIFont.fontWithNameSize("Arial", 16);
        this.setText("");
        this.setTextColor(UIColor.blackColor);
        Simulator.addKeyListener(this);
    }

    public UITextView() {
        super(new CGRect(0, 0, 0, 0));
    }

    public UIFont getFont() {
        return font;
    }

    public void setFont(UIFont font) {
        this.font = font;
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
