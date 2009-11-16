package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UIPreferencesTableRenderer;

public class UIPreferencesTable extends UIView {

    private UIPreferencesTableDataSource dataSource;

    public UIPreferencesTable(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UIPreferencesTableRenderer(this));
        dataSource = null;
    }

    public void setDataSource(UIPreferencesTableDataSource dataSource) {
        this.dataSource = dataSource;
        ((UIPreferencesTableRenderer) xmlvmGetRenderer()).reloadData();
    }

    public UIPreferencesTableDataSource getDataSource() {
        return dataSource;
    }

}
