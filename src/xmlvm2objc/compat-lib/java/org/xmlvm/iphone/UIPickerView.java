
package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UIPickerViewRenderer;

/**
 * 
 * @author teras
 */
public class UIPickerView extends UIView {

    private UIPickerViewDataSource dataSource;
    private UIPickerViewDelegate   delegate;
    private boolean                showsSelectionIndicator;

    public UIPickerView() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIPickerView(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UIPickerViewRenderer(this));
    }

    public int getNumberOfComponents() {
        if (dataSource != null)
            return dataSource.numberOfComponentsInPickerView(this);
        else
            return 0;
    }

    public int numberOfRowsInComponent(int component) {
        if (dataSource != null)
            return dataSource.numberOfRowsInComponent(this, component);
        else
            return 0;
    }

    public CGSize rowSizeForComponent(int component) {
        if (delegate != null) {
            CGSize size = new CGSize(delegate.widthForComponent(this, component), delegate
                    .rowHeightForComponent(this, component));
            return size;
        }
        return new CGSize(0, 0);
    }

    public void reloadAllComponents() {
        ((UIPickerViewRenderer) xmlvmGetRenderer()).updateSelections();
        setNeedsDisplay();
    }

    public void reloadComponent(int component) {
        ((UIPickerViewRenderer) xmlvmGetRenderer()).updateSelections();
        setNeedsDisplay();
    }

    public int selectedRowInComponent(int component) {
        return 0;
    }

    public void selectRow(int row, int component, boolean animated) {

    }

    public UIView viewForRow(int row, int component) {
        if (delegate != null)
            return delegate.viewForRow(this, row, component, null);
        return null;
    }

    public UIPickerViewDataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(UIPickerViewDataSource dataSource) {
        this.dataSource = dataSource;
    }

    public UIPickerViewDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(UIPickerViewDelegate delegate) {
        this.delegate = delegate;
    }

    public boolean showsSelectionIndicator() {
        return showsSelectionIndicator;
    }

    public void setShowsSelectionIndicator(boolean showsSelectionIndicator) {
        this.showsSelectionIndicator = showsSelectionIndicator;
    }
}
