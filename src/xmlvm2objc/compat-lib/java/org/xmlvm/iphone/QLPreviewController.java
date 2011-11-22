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

@XMLVMSkeletonOnly
public class QLPreviewController extends UIViewController {

    /*
     * Static methods
     */
    /**
     * + (BOOL)canPreviewItem:(id <QLPreviewItem>)item;
     */
    public static boolean canPreviewItem(QLPreviewItem item) {
        throw new RuntimeException("Stub");
    }

    /*
     * Constructors
     */
    /** Default constructor */
    public QLPreviewController() {
    }

    /*
     * Properties
     */
    /**
     * @property(assign) id <QLPreviewControllerDataSource> dataSource;
     */
    public QLPreviewControllerDataSource getDataSource() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(assign) id <QLPreviewControllerDataSource> dataSource;
     */
    public void setDataSource(QLPreviewControllerDataSource dataSource) {
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyNSInteger currentPreviewItemIndex;
     */
    public int getCurrentPreviewItemIndex() {
        throw new RuntimeException("Stub");
    }

    /**
     * @propertyNSInteger currentPreviewItemIndex;
     */
    public void setCurrentPreviewItemIndex(int currentPreviewItemIndex) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(readonly) id <QLPreviewItem> currentPreviewItem;
     */
    public QLPreviewItem getCurrentPreviewItem() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(assign) id delegate;
     */
    public QLPreviewControllerDelegate getDelegate() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(assign) id delegate;
     */
    public void setDelegate(QLPreviewControllerDelegate delegate) {
        throw new RuntimeException("Stub");
    }

    /*
     * Instance methods
     */
    /**
     * - (void)reloadData;
     */
    public void reloadData() {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)refreshCurrentPreviewItem;
     */
    public void refreshCurrentPreviewItem() {
        throw new RuntimeException("Stub");
    }
}
