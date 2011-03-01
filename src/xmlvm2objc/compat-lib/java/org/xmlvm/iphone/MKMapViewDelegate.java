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
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class MKMapViewDelegate extends NSObject {

    public void regionWillChangeAnimated(MKMapView mapView, boolean animated) {
    }

    public void regionDidChangeAnimated(MKMapView mapView, boolean animated) {
    }

    public void willStartLoadingMap(MKMapView mapView) {
    }

    public void didFinishLoadingMap(MKMapView mapView) {
    }

    public void didFailLoadingMap(MKMapView mapView, NSError error) {
    }

    public void willStartLocatingUser(MKMapView mapView) {
    }

    public void didStopLocatingUser(MKMapView mapView) {
    }

    public void didUpdateUserLocation(MKMapView mapView, MKUserLocation userLocation) {
    }

    public void didFailToLocateUserWithError(MKMapView mapView, NSError error) {
    }

    public MKAnnotationView viewForAnnotation(MKMapView mapView, MKAnnotation annotation) {
        return null;
    }

    public void didAddAnnotationViews(MKMapView mapView, ArrayList<MKAnnotationView> views) {
    }

    public void calloutAccessoryControlTapped(MKMapView mapView, MKAnnotationView annotationView,
            UIControl control) {
    }

    public void didChangeDragStatefromOldState(MKMapView mapView, MKAnnotationView annotationView,
            int mkAnnotationViewDragStateNew, int mkAnnotationViewDragStateOld) {
    }

    public void didSelectAnnotationView(MKMapView mapView, MKAnnotationView annotationView) {
    }

    public void didDeselectAnnotationView(MKMapView mapView, MKAnnotationView annotationView) {
    }

    public MKOverlayView viewForOverlay(MKMapView mapView, MKOverlay overlay) {
        return null;
    }

    public void didAddOverlayViews(MKMapView mapView, ArrayList<MKOverlayView> overlayViews) {
    }
}
