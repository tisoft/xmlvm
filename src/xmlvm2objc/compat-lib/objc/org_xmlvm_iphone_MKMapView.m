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

#import "org_xmlvm_iphone_MKMapView.h"
#import "org_xmlvm_iphone_MKMapViewDelegate.h"

@implementation MKMapView (cat_org_xmlvm_iphone_MKMapView)

- (void) __init_org_xmlvm_iphone_MKMapView__
{
}

- (void) __init_org_xmlvm_iphone_MKMapView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self setFrame:[n1 getCGRect]];
}

- (int) getMapType__
{
	return [self mapType];
}

- (void) setMapType___int :(int)n1
{
	[self setMapType:n1];
}

- (int) isScrollEnabled__
{
	return [self isScrollEnabled];
}

- (void) setScrollEnabled___boolean :(int)n1
{
	[self setScrollEnabled:n1];
}

- (int) isZoomEnabled__
{
	return [self isZoomEnabled];
}

- (void) setZoomEnabled___boolean :(int)n1
{
	[self setZoomEnabled:n1];
}

- (org_xmlvm_iphone_MKMapViewDelegate*) getDelegate__
{
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_MKMapViewDelegate :(org_xmlvm_iphone_MKMapViewDelegate*)n1
{
	XMLVM_PROPERTY(delegate,n1)
}

- (org_xmlvm_iphone_MKCoordinateRegion*) getRegion__
{
	return [[org_xmlvm_iphone_MKCoordinateRegion alloc] initWithMKCoordinateRegion:[self region]];
}

- (void) setRegion___org_xmlvm_iphone_MKCoordinateRegion :(org_xmlvm_iphone_MKCoordinateRegion*)n1
{
	[self setRegion:[n1 getMKCoordinateRegion]];
}

- (void) setRegion___org_xmlvm_iphone_MKCoordinateRegion_boolean :(org_xmlvm_iphone_MKCoordinateRegion*)n1 :(int)n2
{
	[self setRegion:[n1 getMKCoordinateRegion] animated:n2];
}

- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCenterCoordinate__
{
	return [[org_xmlvm_iphone_CLLocationCoordinate2D alloc] initWithCoordinate2D:[self centerCoordinate]];
}

- (void) setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D :(org_xmlvm_iphone_CLLocationCoordinate2D*)n1
{
	[self setCenterCoordinate:[n1 getCLLocationCoordinate2D]];
}

- (void) setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D_boolean :(org_xmlvm_iphone_CLLocationCoordinate2D*)n1 :(int)n2
{
	[self setCenterCoordinate:[n1 getCLLocationCoordinate2D] animated:n2];
}

- (org_xmlvm_iphone_MKMapRect*) getVisibleMapRect__
{
	return [[org_xmlvm_iphone_MKMapRect alloc] initWithMKMapRect:[self visibleMapRect]];
}

- (void) setVisibleMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1
{
	[self setVisibleMapRect:[n1 getMKMapRect]];
}

- (void) setVisibleMapRect___org_xmlvm_iphone_MKMapRect_boolean :(org_xmlvm_iphone_MKMapRect*)n1 :(int)n2
{
	[self setVisibleMapRect:[n1 getMKMapRect] animated:n2];
}

- (void) setVisibleMapRect___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets_boolean :(org_xmlvm_iphone_MKMapRect*)n1 :(org_xmlvm_iphone_UIEdgeInsets*)n2 :(int)n3
{
	[self setVisibleMapRect:[n1 getMKMapRect] edgePadding:[n2 getUIEdgeInsets] animated:n3];
}

- (int) isShowsUserLocation__
{
	return [self showsUserLocation];
}

- (void) setShowsUserLocation___boolean :(int)n1
{
	[self setShowsUserLocation:n1];
}

- (org_xmlvm_iphone_MKUserLocation*) getUserLocation__
{
	return_XMLVM(userLocation)
}

- (int) isUserLocationVisible__
{
	return [self isUserLocationVisible];
}

- (org_xmlvm_iphone_CGPoint*) convertCoordinateToPointToView___org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_CLLocationCoordinate2D*)n1 :(org_xmlvm_iphone_UIView*)n2
{
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:[self convertCoordinate:[n1 getCLLocationCoordinate2D] toPointToView:n2]];
}

- (org_xmlvm_iphone_CLLocationCoordinate2D*) convertPointToCoordinateFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_CGPoint*)n1 :(org_xmlvm_iphone_UIView*)n2
{
	return [[org_xmlvm_iphone_CLLocationCoordinate2D alloc] initWithCoordinate2D:[self convertPoint:[n1 getCGPoint] toCoordinateFromView:n2]];
}

- (org_xmlvm_iphone_CGRect*) convertRegionToRectToView___org_xmlvm_iphone_MKCoordinateRegion_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_MKCoordinateRegion*)n1 :(org_xmlvm_iphone_UIView*)n2
{
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:[self convertRegion:[n1 getMKCoordinateRegion] toRectToView:n2]];
}

- (org_xmlvm_iphone_MKCoordinateRegion*) convertRectToRegionFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_CGRect*)n1 :(org_xmlvm_iphone_UIView*)n2
{
	return [[org_xmlvm_iphone_MKCoordinateRegion alloc] initWithMKCoordinateRegion:[self convertRect:[n1 getCGRect] toRegionFromView:n2]];
}

- (org_xmlvm_iphone_MKCoordinateRegion*) regionThatFits___org_xmlvm_iphone_MKCoordinateRegion :(org_xmlvm_iphone_MKCoordinateRegion*)n1
{
	return [[org_xmlvm_iphone_MKCoordinateRegion alloc] initWithMKCoordinateRegion:[self regionThatFits:[n1 getMKCoordinateRegion]]];
}

- (org_xmlvm_iphone_MKMapRect*) mapRectThatFits___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1
{
	return [[org_xmlvm_iphone_MKMapRect alloc] initWithMKMapRect:[self mapRectThatFits:[n1 getMKMapRect]]];
}

- (org_xmlvm_iphone_MKMapRect*) mapRectThatFits___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets :(org_xmlvm_iphone_MKMapRect*)n1 :(org_xmlvm_iphone_UIEdgeInsets*)n2
{
	return [[org_xmlvm_iphone_MKMapRect alloc] initWithMKMapRect:[self mapRectThatFits:[n1 getMKMapRect] edgePadding:[n2 getUIEdgeInsets]]];
}

- (java_util_ArrayList*) getAnnotations__
{
	return_XMLVM(annotations)
}

- (void) addAnnotation___org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKAnnotation*)n1
{
	[self addAnnotation:n1];
}

- (void) addAnnotations___java_util_ArrayList :(java_util_ArrayList*)n1
{
	[self addAnnotations:n1];
}

- (void) removeAnnotation___org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKAnnotation*)n1
{
	[self removeAnnotation:n1];
}

- (void) removeAnnotations___java_util_ArrayList :(java_util_ArrayList*)n1
{
	[self removeAnnotations:n1];
}

- (org_xmlvm_iphone_MKAnnotationView*) viewForAnnotation___org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKAnnotation*)n1
{
	return_XMLVM(viewForAnnotation:n1)
}

- (java_util_Set*) annotationsInMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1
{
	return_XMLVM(annotationsInMapRect:[n1 getMKMapRect])
}

- (org_xmlvm_iphone_CGRect*) getAnnotationVisibleRect__
{
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:[self annotationVisibleRect]];
}

- (org_xmlvm_iphone_MKAnnotationView*) dequeueReusableAnnotationViewWithIdentifier___java_lang_String :(java_lang_String*)n1
{
	return_XMLVM(dequeueReusableAnnotationViewWithIdentifier:n1)
}

- (java_util_ArrayList*) getSelectedAnnotations__
{
	return_XMLVM(selectedAnnotations)
}

- (void) setSelectedAnnotations___java_util_ArrayList :(java_util_ArrayList*)n1
{
	[self setSelectedAnnotations:n1];
}

- (void) selectAnnotation___org_xmlvm_iphone_MKAnnotation_boolean :(org_xmlvm_iphone_MKAnnotation*)n1 :(int)n2
{
	[self selectAnnotation:n1 animated:n2];
}

- (void) deselectAnnotation___org_xmlvm_iphone_MKAnnotation_boolean :(org_xmlvm_iphone_MKAnnotation*)n1 :(int)n2
{
	[self deselectAnnotation:n1 animated:n2];
}

- (java_util_ArrayList*) getOverlays__
{
	return_XMLVM(overlays)
}

- (void) addOverlay___org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1
{
	[self addOverlay:n1];
}

- (void) addOverlays___java_util_ArrayList :(java_util_ArrayList*)n1
{
	[self addOverlays:n1];
}

- (void) removeOverlay___org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1
{
	[self removeOverlay:n1];
}

- (void) removeOverlays___java_util_ArrayList :(java_util_ArrayList*)n1
{
	[self removeOverlays:n1];
}

- (void) insertOverlay___org_xmlvm_iphone_MKOverlay_int :(org_xmlvm_iphone_MKOverlay*)n1 :(int)n2
{
	[self insertOverlay:n1 atIndex:n2];
}

- (void) exchangeOverlay___int_int :(int)n1 :(int)n2
{
	[self exchangeOverlayAtIndex:n1 withOverlayAtIndex:n2];
}

- (void) insertOverlayAboveOverlay___org_xmlvm_iphone_MKOverlay_org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1 :(org_xmlvm_iphone_MKOverlay*)n2
{
	[self insertOverlay:n1 aboveOverlay:n2];
}

- (void) insertOverlayBelowOverlay___org_xmlvm_iphone_MKOverlay_org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1 :(org_xmlvm_iphone_MKOverlay*)n2
{
	[self insertOverlay:n1 belowOverlay:n2];
}

- (org_xmlvm_iphone_MKOverlayView*) viewForOverlay___org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1
{
	return_XMLVM(viewForOverlay:n1)
}


@end

