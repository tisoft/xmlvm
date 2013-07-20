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
#import "java_util_List.h"
#import "org_xmlvm_iphone_UIColor.h"



#define org_xmlvm_iphone_UIToolbar UIToolbar

@interface UIToolbar (cat_org_xmlvm_iphone_UIToolbar)

- (void) __init_org_xmlvm_iphone_UIToolbar__;
- (void) __init_org_xmlvm_iphone_UIToolbar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (int) getBarStyle__;
- (void) setBarStyle___int :(int)n1;
- (org_xmlvm_iphone_UIColor*) getTintColor__;
- (void) setTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)n1;
- (int) isTranslucent__;
- (void) setTranslucent___boolean :(int)n1;
- (java_util_List*) getItems__;
- (void) setItems___java_util_List :(java_util_List*)n1;
- (void) setItems___java_util_List_boolean :(java_util_List*)n1 :(int)n2;

@end

