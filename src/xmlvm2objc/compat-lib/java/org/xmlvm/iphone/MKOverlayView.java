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
public class MKOverlayView extends NSObject {

    private final MKOverlay overlay;


    public MKOverlayView(MKOverlay overlay) {
        this.overlay = overlay;
    }

    public MKOverlay getOverlay() {
        return overlay;
    }

    public CGPoint pointForMapPoint(MKMapPoint mapPoint) {
        // TODO : Java implementation
        return null;
    }

    public MKMapPoint mapPointForPoint(CGPoint point) {
        // TODO : Java implementation
        return null;
    }

    public CGRect rectForMapRect(MKMapRect mapRect) {
        return null;
    }

    public MKMapRect mapRectForRect(CGRect rect) {
        return null;
    }

    public boolean canDrawMapRect(MKMapRect mapRect, float zoomScale) {
        return true;
    }

    public void drawMapRect(MKMapRect mapRect, float zoomScale, CGContext context) {
        // TODO : Java implementation
    }

    public void setNeedsDisplayInMapRect(MKMapRect mapRect) {
        // TODO : Java implementation
    }

    public void setNeedsDisplayInMapRect(MKMapRect mapRect, float zoomScale) {
        // TODO : Java implementation
    }
}
