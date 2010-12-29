/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.iphone;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UIPickerViewRenderer;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class UIPickerView extends UIView {
    private final static float     ROWHEIGHT = 10;
    private final static float     ROWWIDTH  = 320 - 2 * UIPickerViewRenderer.INSET - 2;

    private UIPickerViewDataSource dataSource;
    private UIPickerViewDelegate   delegate;
    private boolean                showsSelectionIndicator;


    public UIPickerView() {
        this(CGRect.Zero());
    }

    public UIPickerView(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UIPickerViewRenderer(this));
    }

    public int getNumberOfComponents() {
        if (dataSource != null)
            return dataSource.numberOfComponentsInPickerView(this);
        else
            return 1;
    }

    public int numberOfRowsInComponent(int component) {
        if (dataSource != null)
            return dataSource.numberOfRowsInComponent(this, component);
        else
            return 0;
    }

    public CGSize rowSizeForComponent(int component) {
        float width, height;
        try {
            width = delegate.widthForComponent(this, component);
        } catch (NullPointerException ex) {
            width = ROWWIDTH / getNumberOfComponents();
        }
        try {
            height = delegate.rowHeightForComponent(this, component);
        } catch (NullPointerException ex) {
            height = ROWWIDTH;
        }
        return new CGSize(width, height);
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
        // TODO : Java implementation
        return 0;
    }

    public void selectRow(int row, int component, boolean animated) {
        // TODO : Java implementation
    }

    public UIView viewForRow(int row, int component) {
        UIView view;
        try {
            view = delegate.viewForRow(this, row, component, null);
        } catch (NullPointerException ex) {
            view = null;
        }
        return view;
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
