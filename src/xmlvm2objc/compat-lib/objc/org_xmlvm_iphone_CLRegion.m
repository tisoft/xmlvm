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

#import "org_xmlvm_iphone_CLRegion.h"

@implementation CLRegion (cat_org_xmlvm_iphone_CLRegion)

- (void) __init_org_xmlvm_iphone_CLRegion___org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String :(org_xmlvm_iphone_CLLocationCoordinate2D*)center :(double)radius :(java_lang_String*)identifier
{
	[self initCircularRegionWithCenter:[center getCLLocationCoordinate2D] radius:radius identifier:identifier];
}

- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCenter__
{	
	return [[org_xmlvm_iphone_CLLocationCoordinate2D alloc] initWithCoordinate2D:[self center]];	
}

- (java_lang_String*) getIdentifier__
{	
	return_XMLVM(identifier);	
}

- (double) getRadius__
{	
	return [self radius];	
}

- (int) containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D :(org_xmlvm_iphone_CLLocationCoordinate2D*)coordinate
{	
	return [self containsCoordinate:[coordinate getCLLocationCoordinate2D]];
}



@end

