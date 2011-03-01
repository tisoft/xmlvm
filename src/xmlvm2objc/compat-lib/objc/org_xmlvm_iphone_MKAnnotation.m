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

#import "org_xmlvm_iphone_MKAnnotation.h"

@implementation org_xmlvm_iphone_MKAnnotation;

- (void) __init_org_xmlvm_iphone_MKAnnotation__
{
}

- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCoordinate__
{
	// This is overriden by java code
	return JAVA_NULL;
}

- (void) setCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D :(org_xmlvm_iphone_CLLocationCoordinate2D*)n1
{
	// This is overriden by java code
}

- (java_lang_String*) title__
{
	// This is overriden by java code
	return (java_lang_String*)@"";
}

- (java_lang_String*) subtitle__
{
	// This is overriden by java code
	return (java_lang_String*)@"";
}

- (CLLocationCoordinate2D) coordinate
{
	org_xmlvm_iphone_CLLocationCoordinate2D* coordsxmlvm= [self getCoordinate__];
	CLLocationCoordinate2D coords = [coordsxmlvm getCLLocationCoordinate2D];
	[coordsxmlvm release];
	return coords;
}

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate
{
	org_xmlvm_iphone_CLLocationCoordinate2D * coordsxmlvm = [[org_xmlvm_iphone_CLLocationCoordinate2D alloc] initWithCoordinate2D:newCoordinate];
	[self setCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D:coordsxmlvm];
	[coordsxmlvm release];
}

- (NSString *)subtitle
{
	return [[self subtitle__] autorelease];
}

- (NSString *)title
{
	return [[self title__] autorelease];
}


@end

