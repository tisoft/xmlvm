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

#import "xmlvm.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIEdgeInsets.h"
#import "org_xmlvm_iphone_MKUserLocation.h"
#import "org_xmlvm_iphone_MKCoordinateRegion.h"
#import "org_xmlvm_iphone_MKMapRect.h"
#import "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#import "org_xmlvm_iphone_MKAnnotation.h"
#import "org_xmlvm_iphone_MKAnnotationView.h"
#import "org_xmlvm_iphone_MKOverlay.h"
#import "org_xmlvm_iphone_MKOverlayView.h"
#import "java_util_ArrayList.h"
#import <MapKit/MKMapView.h>

@class org_xmlvm_iphone_MKMapViewDelegate;

typedef MKMapView org_xmlvm_iphone_MKMapView;

@interface MKMapView (cat_org_xmlvm_iphone_MKMapView)

- (void) __init_org_xmlvm_iphone_MKMapView__;
- (void) __init_org_xmlvm_iphone_MKMapView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (int) getMapType__;
- (void) setMapType___int :(int)n1;
- (int) isScrollEnabled__;
- (void) setScrollEnabled___boolean :(int)n1;
- (int) isZoomEnabled__;
- (void) setZoomEnabled___boolean :(int)n1;
- (org_xmlvm_iphone_MKMapViewDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_MKMapViewDelegate :(org_xmlvm_iphone_MKMapViewDelegate*)n1;
- (org_xmlvm_iphone_MKCoordinateRegion*) getRegion__;
- (void) setRegion___org_xmlvm_iphone_MKCoordinateRegion :(org_xmlvm_iphone_MKCoordinateRegion*)n1;
- (void) setRegion___org_xmlvm_iphone_MKCoordinateRegion_boolean :(org_xmlvm_iphone_MKCoordinateRegion*)n1 :(int)n2;
- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCenterCoordinate__;
- (void) setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D :(org_xmlvm_iphone_CLLocationCoordinate2D*)n1;
- (void) setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D_boolean :(org_xmlvm_iphone_CLLocationCoordinate2D*)n1 :(int)n2;
- (org_xmlvm_iphone_MKMapRect*) getVisibleMapRect__;
- (void) setVisibleMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1;
- (void) setVisibleMapRect___org_xmlvm_iphone_MKMapRect_boolean :(org_xmlvm_iphone_MKMapRect*)n1 :(int)n2;
- (void) setVisibleMapRect___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets_boolean :(org_xmlvm_iphone_MKMapRect*)n1 :(org_xmlvm_iphone_UIEdgeInsets*)n2 :(int)n3;
- (int) isShowsUserLocation__;
- (void) setShowsUserLocation___boolean :(int)n1;
- (org_xmlvm_iphone_MKUserLocation*) getUserLocation__;
- (int) isUserLocationVisible__;
- (org_xmlvm_iphone_CGPoint*) convertCoordinateToPointToView___org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_CLLocationCoordinate2D*)n1 :(org_xmlvm_iphone_UIView*)n2;
- (org_xmlvm_iphone_CLLocationCoordinate2D*) convertPointToCoordinateFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_CGPoint*)n1 :(org_xmlvm_iphone_UIView*)n2;
- (org_xmlvm_iphone_CGRect*) convertRegionToRectToView___org_xmlvm_iphone_MKCoordinateRegion_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_MKCoordinateRegion*)n1 :(org_xmlvm_iphone_UIView*)n2;
- (org_xmlvm_iphone_MKCoordinateRegion*) convertRectToRegionFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_CGRect*)n1 :(org_xmlvm_iphone_UIView*)n2;
- (org_xmlvm_iphone_MKCoordinateRegion*) regionThatFits___org_xmlvm_iphone_MKCoordinateRegion :(org_xmlvm_iphone_MKCoordinateRegion*)n1;
- (org_xmlvm_iphone_MKMapRect*) mapRectThatFits___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1;
- (org_xmlvm_iphone_MKMapRect*) mapRectThatFits___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets :(org_xmlvm_iphone_MKMapRect*)n1 :(org_xmlvm_iphone_UIEdgeInsets*)n2;
- (java_util_ArrayList*) getAnnotations__;
- (void) addAnnotation___org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKAnnotation*)n1;
- (void) addAnnotations___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) removeAnnotation___org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKAnnotation*)n1;
- (void) removeAnnotations___java_util_ArrayList :(java_util_ArrayList*)n1;
- (org_xmlvm_iphone_MKAnnotationView*) viewForAnnotation___org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKAnnotation*)n1;
- (java_util_Set*) annotationsInMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1;
- (org_xmlvm_iphone_CGRect*) getAnnotationVisibleRect__;
- (org_xmlvm_iphone_MKAnnotationView*) dequeueReusableAnnotationViewWithIdentifier___java_lang_String :(java_lang_String*)n1;
- (java_util_ArrayList*) getSelectedAnnotations__;
- (void) setSelectedAnnotations___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) selectAnnotation___org_xmlvm_iphone_MKAnnotation_boolean :(org_xmlvm_iphone_MKAnnotation*)n1 :(int)n2;
- (void) deselectAnnotation___org_xmlvm_iphone_MKAnnotation_boolean :(org_xmlvm_iphone_MKAnnotation*)n1 :(int)n2;
- (java_util_ArrayList*) getOverlays__;
- (void) addOverlay___org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1;
- (void) addOverlays___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) removeOverlay___org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1;
- (void) removeOverlays___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) insertOverlay___org_xmlvm_iphone_MKOverlay_int :(org_xmlvm_iphone_MKOverlay*)n1 :(int)n2;
- (void) exchangeOverlay___int_int :(int)n1 :(int)n2;
- (void) insertOverlayAboveOverlay___org_xmlvm_iphone_MKOverlay_org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1 :(org_xmlvm_iphone_MKOverlay*)n2;
- (void) insertOverlayBelowOverlay___org_xmlvm_iphone_MKOverlay_org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1 :(org_xmlvm_iphone_MKOverlay*)n2;
- (org_xmlvm_iphone_MKOverlayView*) viewForOverlay___org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1;

@end
