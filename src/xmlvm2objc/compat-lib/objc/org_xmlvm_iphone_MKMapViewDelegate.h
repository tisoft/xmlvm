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

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_MKMapViewDelegate.h"
#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_MKUserLocation.h"
#import "org_xmlvm_iphone_MKMapView.h"
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

@end

