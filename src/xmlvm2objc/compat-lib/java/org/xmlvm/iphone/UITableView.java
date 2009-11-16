package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UITableViewRenderer;

public class UITableView extends UIView {

    private UITableViewDataSource dataSource;
    private UITableViewDelegate   delegate;

    public UITableView(CGRect rect) {
        this(rect, UITableViewStyle.Plain);
    }

    public UITableView(CGRect rect, int style) {
        super(rect);
        xmlvmSetRenderer(new UITableViewRenderer(this));
        dataSource = null;
        delegate = null;
    }

    public void setDataSource(UITableViewDataSource dataSource) {
        this.dataSource = dataSource;
        ((UITableViewRenderer) xmlvmGetRenderer()).reloadData();
    }

    public UITableViewDataSource getTableViewDataSource() {
        return dataSource;
    }

    public void setDelegate(UITableViewDelegate delegate) {
        this.delegate = delegate;
        ((UITableViewRenderer) xmlvmGetRenderer()).reloadData();
    }

    public UITableViewDelegate getTableViewDelegate() {
        return delegate;
    }
}
