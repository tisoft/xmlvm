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
import java.util.HashSet;
import java.util.Set;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class MKMapView extends UIView {

    private int                     mapType;
    private boolean                 zoomEnabled;
    private boolean                 scrollEnabled;
    private MKMapViewDelegate       delegate;
    //
    private MKCoordinateRegion      region;
    private CLLocationCoordinate2D  centerCoordinate;
    private MKMapRect               visibleMapRect;
    //
    private boolean                 showsUserLocation;
    private boolean                 userLocationVisible;
    private MKUserLocation          userLocation;
    //
    private ArrayList<MKAnnotation> annotations;
    private ArrayList<MKAnnotation> selectedAnnotations;
    private ArrayList<MKOverlay>    overlays;


    public MKMapView() {
        this(CGRect.Zero());
    }

    public MKMapView(CGRect frame) {
        super(frame);
        annotations = new ArrayList<MKAnnotation>();
    }

    public int getMapType() {
        return mapType;
    }

    public void setMapType(int mkMapType) {
        this.mapType = mkMapType;
    }

    public boolean isScrollEnabled() {
        return scrollEnabled;
    }

    public void setScrollEnabled(boolean scrollEnabled) {
        this.scrollEnabled = scrollEnabled;
    }

    public boolean isZoomEnabled() {
        return zoomEnabled;
    }

    public void setZoomEnabled(boolean zoomEnabled) {
        this.zoomEnabled = zoomEnabled;
    }

    public MKMapViewDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(MKMapViewDelegate delegate) {
        this.delegate = delegate;
    }

    public MKCoordinateRegion getRegion() {
        return region;
    }

    public void setRegion(MKCoordinateRegion region) {
        setRegion(region, false);
    }

    public void setRegion(MKCoordinateRegion region, boolean animated) {
        this.region = region;
    }

    public CLLocationCoordinate2D getCenterCoordinate() {
        return centerCoordinate;
    }

    public void setCenterCoordinate(CLLocationCoordinate2D centerCoordinate) {
        setCenterCoordinate(centerCoordinate, false);
    }

    public void setCenterCoordinate(CLLocationCoordinate2D centerCoordinate, boolean animated) {
        this.centerCoordinate = centerCoordinate;
    }

    public MKMapRect getVisibleMapRect() {
        return visibleMapRect;
    }

    public void setVisibleMapRect(MKMapRect visibleMapRect) {
        setVisibleMapRect(visibleMapRect, false);
    }

    public void setVisibleMapRect(MKMapRect visibleMapRect, boolean animated) {
        setVisibleMapRect(visibleMapRect, new UIEdgeInsets(0, 0, 0, 0), animated);
    }

    public void setVisibleMapRect(MKMapRect visibleMapRect, UIEdgeInsets edgePadding,
            boolean animated) {
        this.visibleMapRect = visibleMapRect;
    }

    public boolean isShowsUserLocation() {
        return showsUserLocation;
    }

    public void setShowsUserLocation(boolean showsUserLocation) {
        this.showsUserLocation = showsUserLocation;
    }

    public MKUserLocation getUserLocation() {
        return userLocation;
    }

    public boolean isUserLocationVisible() {
        return userLocationVisible;
    }

    public CGPoint convertCoordinateToPointToView(CLLocationCoordinate2D coordinate, UIView view) {
        // TODO : Java implementation
        return null;
    }

    public CLLocationCoordinate2D convertPointToCoordinateFromView(CGPoint point, UIView view) {
        // TODO : Java implementation
        return null;
    }

    public CGRect convertRegionToRectToView(MKCoordinateRegion region, UIView view) {
        // TODO : Java implementation
        return null;
    }

    public MKCoordinateRegion convertRectToRegionFromView(CGRect rect, UIView view) {
        // TODO : Java implementation
        return null;
    }

    public MKCoordinateRegion regionThatFits(MKCoordinateRegion region) {
        // TODO : Java implementation
        return null;
    }

    public MKMapRect mapRectThatFits(MKMapRect mapRect) {
        // TODO : Java implementation
        return null;
    }

    public MKMapRect mapRectThatFits(MKMapRect mapRect, UIEdgeInsets insets) {
        // TODO : Java implementation
        return null;
    }

    public ArrayList<MKAnnotation> getAnnotations() {
        return annotations;
    }

    public void addAnnotation(MKAnnotation annotation) {
        annotations.add(annotation);
    }

    public void addAnnotations(ArrayList<MKAnnotation> annotations) {
        this.annotations.addAll(annotations);
    }

    public void removeAnnotation(MKAnnotation annotation) {
        annotations.remove(annotation);
    }

    public void removeAnnotations(ArrayList<MKAnnotation> annotations) {
        this.annotations.removeAll(annotations);
    }

    public MKAnnotationView viewForAnnotation(MKAnnotation annotation) {
        // TODO: Java implementation
        return null;
    }

    public Set<MKAnnotation> annotationsInMapRect(MKMapRect rect) {
        // TODO: Java implementation
        return new HashSet<MKAnnotation>();
    }

    public CGRect getAnnotationVisibleRect() {
        // TODO: Java implementation
        return null;
    }

    public MKAnnotationView dequeueReusableAnnotationViewWithIdentifier(String id) {
        // TODO: Java implementation
        return null;
    }

    public ArrayList<MKAnnotation> getSelectedAnnotations() {
        return selectedAnnotations;
    }

    public void setSelectedAnnotations(ArrayList<MKAnnotation> selectedAnnotations) {
        this.selectedAnnotations = new ArrayList<MKAnnotation>();
        if (selectedAnnotations != null && selectedAnnotations.size() > 0) {
            this.selectedAnnotations.add(selectedAnnotations.get(0));
        }
    }

    public void selectAnnotation(MKAnnotation annotation, boolean animated) {
        if (annotations.contains(annotation)) {
            selectedAnnotations.add(annotation);
            // TODO : update visuals
        }
    }

    public void deselectAnnotation(MKAnnotation annotation, boolean animated) {
        selectedAnnotations.remove(annotation);
        // TODO : update visuals
    }

    public ArrayList<MKOverlay> getOverlays() {
        return overlays;
    }

    public void addOverlay(MKOverlay overlay) {
        overlays.add(overlay);
    }

    public void addOverlays(ArrayList<MKOverlay> overlays) {
        this.overlays.addAll(overlays);
    }

    public void removeOverlay(MKOverlay overlay) {
        overlays.remove(overlay);
    }

    public void removeOverlays(ArrayList<MKOverlay> overlays) {
        this.overlays.removeAll(overlays);
    }

    public void insertOverlay(MKOverlay overlay, int index) {
        overlays.add(index, overlay);
    }

    public void exchangeOverlay(int index1, int index2) {
        MKOverlay ol1 = overlays.get(index1);
        MKOverlay ol2 = overlays.get(index2);
        overlays.set(index2, ol1);
        overlays.set(index1, ol2);
    }

    public void insertOverlayAboveOverlay(MKOverlay overlay, MKOverlay sibling) {
        int pos = overlays.indexOf(overlay);
        insertOverlay(sibling, pos + 1);
    }

    public void insertOverlayBelowOverlay(MKOverlay overlay, MKOverlay sibling) {
        int pos = overlays.indexOf(overlay);
        insertOverlay(sibling, pos);
    }

    public MKOverlayView viewForOverlay(MKOverlay overlay) {
        // TODO : Java implementation
        return null;
    }
}
