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

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIScrollView extends UIView {

    private boolean              scrollEnabled                  = true;
    private boolean              pagingEnabled                  = false;
    private CGSize               contentSize                    = new CGSize(0, 0);
    private boolean              showsHorizontalScrollIndicator = true;
    private boolean              showsVerticalScrollIndicator   = true;
    private boolean              scrollsToTop                   = true;
    private UIScrollViewDelegate delegate                       = null;


    public UIScrollView() {
        super();
    }

    public UIScrollView(CGRect frame) {
        super(frame);
    }

    public void setContentOffset(CGPoint offset) {
        setContentOffset(offset, false);
    }

    public void setContentOffset(CGPoint offset, boolean animated) {
        // ERROR: this should be done with properties!
        xmlvmSetOffsets((int) offset.x, (int) offset.y);
        setNeedsDisplay();
    }

    public CGPoint getContentOffset() {
        // TODO : Java implementation
        return null;
    }

    public void setScrollEnabled(boolean scrollEnabled) {
        this.scrollEnabled = scrollEnabled;
    }

    public boolean isScrollEnabled() {
        return this.scrollEnabled;
    }

    public boolean isPagingEnabled() {
        return pagingEnabled;
    }

    public void setPagingEnabled(boolean pagingEnabled) {
        this.pagingEnabled = pagingEnabled;
    }

    public CGSize getContentSize() {
        return contentSize;
    }

    public void setContentSize(CGSize contentSize) {
        this.contentSize = contentSize;
    }

    public UIScrollViewDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(UIScrollViewDelegate delegate) {
        this.delegate = delegate;
    }

    public boolean isScrollsToTop() {
        return scrollsToTop;
    }

    public void setScrollsToTop(boolean scrollsToTop) {
        this.scrollsToTop = scrollsToTop;
    }

    public boolean isShowsHorizontalScrollIndicator() {
        return showsHorizontalScrollIndicator;
    }

    public void setShowsHorizontalScrollIndicator(boolean showsHorizontalScrollIndicator) {
        this.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
    }

    public boolean isShowsVerticalScrollIndicator() {
        return showsVerticalScrollIndicator;
    }

    public void setShowsVerticalScrollIndicator(boolean showsVerticalScrollIndicator) {
        this.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
    }

    public void scrollRectToVisible(CGRect rect, boolean animated) {
        // TODO : Java implementation
    }
}
