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
#import "org_xmlvm_iphone_MKAnnotationView.h"
#import "org_xmlvm_iphone_MKAnnotation.h"
#import "java_lang_String.h"
#import <MapKit/MKPinAnnotationView.h>

typedef MKPinAnnotationView org_xmlvm_iphone_MKPinAnnotationView;
@interface MKPinAnnotationView (cat_org_xmlvm_iphone_MKPinAnnotationView)

- (void) __init_org_xmlvm_iphone_MKPinAnnotationView___org_xmlvm_iphone_MKAnnotation_java_lang_String :(org_xmlvm_iphone_MKAnnotation*)annotation :(java_lang_String*)reuseIdentifier;
- (int) isAnimatesDrop__;
- (void) setAnimatesDrop___boolean :(int)animatesDrop;
- (int) getPinColor__;
- (void) setPinColor___int :(int)pinColor;

@end

