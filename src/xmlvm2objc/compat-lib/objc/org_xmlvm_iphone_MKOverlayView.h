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
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_MKOverlay.h"
#import "org_xmlvm_iphone_MKMapPoint.h"
#import "org_xmlvm_iphone_MKMapRect.h"
#import "org_xmlvm_iphone_CGContext.h"
#import <MapKit/MKOverlayView.h>

typedef MKOverlayView org_xmlvm_iphone_MKOverlayView;

@interface MKOverlayView (cat_org_xmlvm_iphone_MKOverlayView)

- (void) __init_org_xmlvm_iphone_MKOverlayView___org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1;
- (org_xmlvm_iphone_MKOverlay*) getOverlay__;
- (org_xmlvm_iphone_CGPoint*) pointForMapPoint___org_xmlvm_iphone_MKMapPoint :(org_xmlvm_iphone_MKMapPoint*)n1;
- (org_xmlvm_iphone_MKMapPoint*) mapPointForPoint___org_xmlvm_iphone_CGPoint :(org_xmlvm_iphone_CGPoint*)n1;
- (org_xmlvm_iphone_CGRect*) rectForMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1;
- (org_xmlvm_iphone_MKMapRect*) mapRectForRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1;
- (void) setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect_float :(org_xmlvm_iphone_MKMapRect*)n1 :(float)n2;

- (BOOL) canDrawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale;
- (int)  canDrawMapRect___org_xmlvm_iphone_MKMapRect_float :(org_xmlvm_iphone_MKMapRect*)n1 :(float)n2;
- (void) drawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale inContext:(CGContextRef)context;
- (void) drawMapRect___org_xmlvm_iphone_MKMapRect_float_org_xmlvm_iphone_CGContext :(org_xmlvm_iphone_MKMapRect*)n1 :(float)n2 :(org_xmlvm_iphone_CGContext*)n3;

@end

