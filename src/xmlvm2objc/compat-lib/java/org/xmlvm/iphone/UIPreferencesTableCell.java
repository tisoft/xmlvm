package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UIPreferencesTableCellRenderer;

public class UIPreferencesTableCell extends UIView {

    private String  title       = "";

    private boolean isGroupCell = false;

    public UIPreferencesTableCell() {
        super();
        xmlvmSetRenderer(new UIPreferencesTableCellRenderer(this));
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setEnabled(boolean flag) {
    }

    public void setGroupCell(boolean flag) {
        this.isGroupCell = flag;
    }

    public boolean isGroupCell() {
        return isGroupCell;
    }
}
