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
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_MKMapViewDelegate.h"
#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_MKUserLocation.h"
#import "org_xmlvm_iphone_MKMapView.h"
#import "java_util_List.h"
#import "org_xmlvm_iphone_UIControl.h"
#import <MapKit/MKMapView.h>
	
@interface org_xmlvm_iphone_MKMapViewDelegate : java_lang_Object<MKMapViewDelegate>

- (void) __init_org_xmlvm_iphone_MKMapViewDelegate__;
- (void) regionWillChangeAnimated___org_xmlvm_iphone_MKMapView_boolean :(org_xmlvm_iphone_MKMapView*)mapView :(int)animated;
- (void) regionDidChangeAnimated___org_xmlvm_iphone_MKMapView_boolean :(org_xmlvm_iphone_MKMapView*)mapView :(int)animated;
- (void) willStartLoadingMap___org_xmlvm_iphone_MKMapView :(org_xmlvm_iphone_MKMapView*)mapView;
- (void) didFinishLoadingMap___org_xmlvm_iphone_MKMapView :(org_xmlvm_iphone_MKMapView*)mapView;
- (void) didFailLoadingMap___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_NSError*)error;
- (void) willStartLocatingUser___org_xmlvm_iphone_MKMapView :(org_xmlvm_iphone_MKMapView*)mapView;
- (void) didStopLocatingUser___org_xmlvm_iphone_MKMapView :(org_xmlvm_iphone_MKMapView*)mapView;
- (void) didUpdateUserLocation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKUserLocation :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_MKUserLocation*)location;
- (void) didFailToLocateUserWithError___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_NSError*)error;
- (org_xmlvm_iphone_MKAnnotationView*) viewForAnnotation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_MKAnnotation*)annotation;
- (void) didAddAnnotationViews___org_xmlvm_iphone_MKMapView_java_util_List :(org_xmlvm_iphone_MKMapView*)mapView :(java_util_List*)views;
- (void) calloutAccessoryControlTapped___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_org_xmlvm_iphone_UIControl :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_MKAnnotationView*)annotation :(org_xmlvm_iphone_UIControl*)control;
- (void) didChangeDragStatefromOldState___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_int_int :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_MKAnnotationView*)annotationView :(int)newState :(int)oldState;
- (void) didSelectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_MKAnnotationView*)annotationView;
- (void) didDeselectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_MKAnnotationView*)annotationView;
- (org_xmlvm_iphone_MKOverlayView*) viewForOverlay___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKMapView*)mapView :(org_xmlvm_iphone_MKOverlay*)overlay;
- (void) didAddOverlayViews___org_xmlvm_iphone_MKMapView_java_util_List :(org_xmlvm_iphone_MKMapView*)mapView :(java_util_List*)overlayViews;

@end

