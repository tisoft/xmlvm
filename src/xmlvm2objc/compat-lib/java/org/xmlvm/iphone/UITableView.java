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

import java.util.ArrayList;
import java.util.List;
import org.xmlvm.iphone.internal.renderer.UITableViewRenderer;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UITableView extends UIScrollView {

    private UITableViewDataSource dataSource;
    private UITableViewDelegate   delegate;
    private UIColor               separatorColor;
    private int                   separatorStyle;
    private boolean               editing;
    private boolean               allowsSelection;
    private float                 rowHeight;


    public UITableView() {
        this(CGRect.Zero());
    }

    public UITableView(CGRect rect) {
        this(rect, UITableViewStyle.Plain);
    }

    public UITableView(CGRect rect, int uiTableViewStyle) {
        super(rect);
        xmlvmSetRenderer(new UITableViewRenderer(this));
        dataSource = null;
        delegate = null;
        rowHeight = 50f;
    }

    public void setDataSource(UITableViewDataSource dataSource) {
        this.dataSource = dataSource;
        if (this.dataSource != null)
            ((UITableViewRenderer) xmlvmGetRenderer()).reloadData();
    }

    public void setDelegate(UITableViewDelegate delegate) {
        this.delegate = delegate;
        ((UITableViewRenderer) xmlvmGetRenderer()).reloadData();
    }

    public UITableViewDelegate getTableViewDelegate() {
        return delegate;
    }

    public UITableViewDataSource getDataSource() {
        return dataSource;
    }

    public UITableViewCell dequeueReusableCellWithIdentifier(String identifier) {
        // TODO : Java implementation
        return null;
    }

    public void deleteRowsAtIndexPaths(List<NSIndexPath> indexPaths, boolean animation) {
        // TODO : Java implementation
    }

    public void reloadData() {
        // TODO : Java implementation
    }

    public void reloadRowsAtIndexPaths(List<NSIndexPath> indexPaths,
            int uiTableViewRowAnimation) {
        // TODO : Java implementation
    }

    public NSIndexPath indexPathForSelectedRow() {
        // TODO : Java implementation
		return null;
    }

    public void deselectRowAtIndexPath(NSIndexPath indexPath, boolean animation) {
        // TODO : Java implementation
    }

    public void insertRowsAtIndexPaths(List<NSIndexPath> indexPaths, int uiTableViewRowAnimation) {
        // TODO : Java implementation        
    }
    
    public UIColor getSeparatorColor() {
        return separatorColor;
    }

    public void setSeparatorColor(UIColor separatorColor) {
        this.separatorColor = separatorColor;
    }

    public int getSeparatorStyle() {
        return separatorStyle;
    }

    public void setSeparatorStyle(int uiTableViewCellSeparatorStyle) {
        this.separatorStyle = uiTableViewCellSeparatorStyle;
    }

    public boolean isAllowsSelection() {
        return allowsSelection;
    }

    public void setAllowsSelection(boolean allowsSelection) {
        this.allowsSelection = allowsSelection;
    }

    public boolean isEditing() {
        return editing;
    }

    public void setEditing(boolean editing) {
        setEditing(editing, false);
    }

    public void setEditing(boolean editing, boolean animated) {
        this.editing = editing;
    }

    public float getRowHeight() {
        return rowHeight;
    }

    public void setRowHeight(float rowHeight) {
        this.rowHeight = rowHeight;
    }

    public void scrollToRowAtIndexPath(NSIndexPath indexPath, int uiTableViewScrollPosition, boolean animated) {
        // TODO : Java implementation
    }

    public void scrollToNearestSelectedRowAtScrollPosition(int uiTableViewScrollPosition, boolean animated) {
        // TODO : Java implementation
    }
}
