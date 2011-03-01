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

#import "org_xmlvm_iphone_MKPinAnnotationView.h"

@implementation MKPinAnnotationView (cat_org_xmlvm_iphone_MKPinAnnotationView)

- (void) __init_org_xmlvm_iphone_MKPinAnnotationView___org_xmlvm_iphone_MKAnnotation_java_lang_String :(org_xmlvm_iphone_MKAnnotation*)annotation :(java_lang_String*)reuseIdentifier
{
	[super __init_org_xmlvm_iphone_MKAnnotationView___org_xmlvm_iphone_MKAnnotation_java_lang_String:annotation :reuseIdentifier];
}

- (int) isAnimatesDrop__
{
	return [self animatesDrop];
}

- (void) setAnimatesDrop___boolean :(int)animatesDrop
{
	[self setAnimatesDrop:animatesDrop];
}

- (int) getPinColor__
{
	return [self pinColor];
}

- (void) setPinColor___int :(int)pinColor
{
	[self setPinColor:pinColor];
}

@end

