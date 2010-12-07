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

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class MKMapView extends UIView {

    private int                    mapType;
    private boolean                zoomEnabled;
    private boolean                scrollEnabled;
    private MKMapViewDelegate      delegate;
    //
    private MKCoordinateRegion     region;
    private CLLocationCoordinate2D centerCoordinate;
    private MKMapRect              visibleMapRect;
    //
    private boolean                showsUserLocation;
    private boolean                userLocationVisible;
    private MKUserLocation         userLocation;


    public MKMapView() {
        this(CGRect.Zero());
    }

    public MKMapView(CGRect frame) {
        super(frame);
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
}
