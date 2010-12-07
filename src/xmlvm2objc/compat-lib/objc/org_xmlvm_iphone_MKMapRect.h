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
#import "org_xmlvm_iphone_MKMapPoint.h"
#import "org_xmlvm_iphone_MKMapSize.h"
#import <MapKit/MKGeometry.h>
	
@interface org_xmlvm_iphone_MKMapRect : java_lang_Object
{
@public org_xmlvm_iphone_MKMapPoint* origin_org_xmlvm_iphone_MKMapPoint;
@public org_xmlvm_iphone_MKMapSize* size_org_xmlvm_iphone_MKMapSize;
}

- (void) __init_org_xmlvm_iphone_MKMapRect___float_float_float_float :(float)x :(float)y :(float)width :(float)height;
- (org_xmlvm_iphone_MKMapRect*) initWithMKMapRect:(MKMapRect) rect;
- (MKMapRect) getMKMapRect;

@end

