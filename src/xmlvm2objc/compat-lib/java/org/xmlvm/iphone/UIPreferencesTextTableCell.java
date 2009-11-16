package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.renderer.UIPreferencesTextTableCellRenderer;

public class UIPreferencesTextTableCell extends UIPreferencesTableCell {

    private String text;

    public UIPreferencesTextTableCell() {
        super();
        xmlvmSetRenderer(new UIPreferencesTextTableCellRenderer(this));
        text = "";
        Simulator.addKeyListener(this);
    }

    public void setValue(String value) {
        text = value;
    }

    public String getValue() {
        return text;
    }

    /* TODO teras: again even handling here */
    public void keyTyped(char key) {
        if (key == '\b' && !text.equals(""))
            text = text.substring(0, text.length() - 1);
        else
            text += key;
        Simulator.redrawDisplay();
    }

}
