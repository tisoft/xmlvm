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
import org.xmlvm.iphone.internal.renderer.UIPageControlRenderer;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class UIPageControl extends UIView {

    private int     currentPage;
    private int     numberOfPages;
    private boolean hidesForSinglePage;
    private boolean defersCurrentPageDisplay;


    public UIPageControl() {
        this(CGRect.Zero());
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
