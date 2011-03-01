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

#import "org_xmlvm_iphone_MKOverlayView.h"


@implementation MKOverlayView (cat_org_xmlvm_iphone_MKOverlayView)

- (void) __init_org_xmlvm_iphone_MKOverlayView___org_xmlvm_iphone_MKOverlay :(org_xmlvm_iphone_MKOverlay*)n1
{
}

- (org_xmlvm_iphone_MKOverlay*) getOverlay__
{
	return_XMLVM(overlay)
}

- (org_xmlvm_iphone_CGPoint*) pointForMapPoint___org_xmlvm_iphone_MKMapPoint :(org_xmlvm_iphone_MKMapPoint*)n1
{
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:[self pointForMapPoint:[n1 getMKMapPoint]]];
}

- (org_xmlvm_iphone_MKMapPoint*) mapPointForPoint___org_xmlvm_iphone_CGPoint :(org_xmlvm_iphone_CGPoint*)n1
{
	return [[org_xmlvm_iphone_MKMapPoint alloc] initWithMKMapPoint:[self mapPointForPoint:[n1 getCGPoint]]];
}

- (org_xmlvm_iphone_CGRect*) rectForMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1
{
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:[self rectForMapRect:[n1 getMKMapRect]]];
}

- (org_xmlvm_iphone_MKMapRect*) mapRectForRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	return [[org_xmlvm_iphone_MKMapRect alloc] initWithMKMapRect:[self mapRectForRect:[n1 getCGRect]]];
}

- (BOOL)canDrawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale
{
	org_xmlvm_iphone_MKMapRect* rectxmlvm = [[org_xmlvm_iphone_MKMapRect alloc] initWithMKMapRect:mapRect];
	int status = [self canDrawMapRect___org_xmlvm_iphone_MKMapRect_float:rectxmlvm :zoomScale];
	[rectxmlvm release];
	return status;
}

- (int) canDrawMapRect___org_xmlvm_iphone_MKMapRect_float :(org_xmlvm_iphone_MKMapRect*)n1 :(float)n2
{
	return YES;
}

- (void)drawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale inContext:(CGContextRef)context
{
	org_xmlvm_iphone_MKMapRect* rectxmlvm = [[org_xmlvm_iphone_MKMapRect alloc] initWithMKMapRect:mapRect];
	org_xmlvm_iphone_CGContext* coxtxmlvm = [[org_xmlvm_iphone_CGContext alloc] initWithCGContextRef:context];
	[self drawMapRect___org_xmlvm_iphone_MKMapRect_float_org_xmlvm_iphone_CGContext:rectxmlvm :zoomScale :coxtxmlvm];	
	[rectxmlvm release];
	[coxtxmlvm release];
}

- (void) drawMapRect___org_xmlvm_iphone_MKMapRect_float_org_xmlvm_iphone_CGContext :(org_xmlvm_iphone_MKMapRect*)n1 :(float)n2 :(org_xmlvm_iphone_CGContext*)n3
{
}

- (void) setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1
{
	[self setNeedsDisplayInMapRect:[n1 getMKMapRect]];
}

- (void) setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect_float :(org_xmlvm_iphone_MKMapRect*)n1 :(float)n2
{
	[self setNeedsDisplayInMapRect:[n1 getMKMapRect] zoomScale:n2];
}

@end

