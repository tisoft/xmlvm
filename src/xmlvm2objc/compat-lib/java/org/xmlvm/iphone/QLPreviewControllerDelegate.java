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
public abstract class QLPreviewControllerDelegate {

    /*
     * Instance methods
     */
    /**
     * - (void)previewControllerWillDismiss:(QLPreviewController *)controller;
     */
    public abstract void previewControllerWillDismiss(QLPreviewController controller);

    /**
     * - (void)previewControllerDidDismiss:(QLPreviewController *)controller;
     */
    public abstract void previewControllerDidDismiss(QLPreviewController controller);

    /**
     * - (BOOL)previewController:(QLPreviewController *)controller shouldOpenURL:(NSURL *)url forPreviewItem:(id <QLPreviewItem>)item;
     */
    public abstract boolean shouldOpenURL(QLPreviewController controller, NSURL url, QLPreviewItem item);
//    /**
//     * - (CGRect)previewController:(QLPreviewController *)controller frameForPreviewItem:(id <QLPreviewItem>)item inSourceView:(UIView **)view ;
//     */
//    public abstract CGRect frameForPreviewItem(QLPreviewController controller, QLPreviewItem item, Reference<UIView> view);
//
//    /**
//     * - (UIImage *)previewController:(QLPreviewController *)controller transitionImageForPreviewItem:(id <QLPreviewItem>)item contentRect:(CGRect *)contentRect;
//     */
//    public abstract UIImage transitionImageForPreviewItem(QLPreviewController controller, QLPreviewItem item, Reference<CGRect> contentRect);
}
