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

import org.xmlvm.iphone.internal.renderer.UIPageControlRenderer;

/**
 * 
 * @author teras
 */
public class UIPageControl extends UIView {

    private int     currentPage;
    private int     numberOfPages;
    private boolean hidesForSinglePage;
    private boolean defersCurrentPageDisplay;

    public UIPageControl() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIPageControl(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UIPageControlRenderer(this));
    }

    public CGSize sizeForNumberOfPages(int pageCount) {
        // TODO : Java implementation
        return new CGSize(0, 0);
    }

    public void updateCurrentPageDisplay() {
        // TODO : Java implementation
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public boolean isDefersCurrentPageDisplay() {
        return defersCurrentPageDisplay;
    }

    public void setDefersCurrentPageDisplay(boolean defersCurrentPageDisplay) {
        this.defersCurrentPageDisplay = defersCurrentPageDisplay;
    }

    public boolean isHidesForSinglePage() {
        return hidesForSinglePage;
    }

    public void setHidesForSinglePage(boolean hidesForSinglePage) {
        this.hidesForSinglePage = hidesForSinglePage;
    }

    public int getNumberOfPages() {
        return numberOfPages;
    }

    public void setNumberOfPages(int numberOfPages) {
        this.numberOfPages = numberOfPages;
    }
}
