/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.iphone;

import java.util.ArrayList;
import org.xmlvm.iphone.internal.renderer.UITableViewRenderer;

public class UITableView extends UIView {

    private UITableViewDataSource dataSource;
    private UITableViewDelegate   delegate;
    private UIColor               separatorColor;
    private int                   separatorStyle;
    private boolean               editing;
    private boolean               allowsSelection;
    private float                 rowHeight;

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

    public UITableViewCell dequeueReusableCellWithIdentifier(String identifier) {
        // TODO : Java implementation
        return null;
    }

    public void deleteRowsAtIndexPaths(ArrayList<NSIndexPath> indexPaths, boolean animation) {
        // TODO : Java implementation
    }

    public void reloadData() {
        // TODO : Java implementation
    }

    public void reloadRowsAtIndexPaths(ArrayList<NSIndexPath> indexPaths,
            int uiTableViewRowAnimation) {
        // TODO : Java implementation
    }

    public void deselectRowAtIndexPath(NSIndexPath indexPath, boolean animation) {
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
}
