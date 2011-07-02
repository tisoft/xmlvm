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

#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIColor.h"
@class org_xmlvm_iphone_UINavigationBarDelegate;
@class org_xmlvm_iphone_UINavigationItem;

typedef UINavigationBar org_xmlvm_iphone_UINavigationBar;

@interface UINavigationBar (cat_org_xmlvm_iphone_UINavigationBar)

- (void) __init_org_xmlvm_iphone_UINavigationBar__;
- (void) __init_org_xmlvm_iphone_UINavigationBar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (int) getBarStyle__;
- (void) setBarStyle___int :(int)n1;
- (org_xmlvm_iphone_UIColor*) getTintColor__;
- (void) setTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)n1;
- (int) isTranslucent__;
- (void) setTranslucent___boolean :(int)n1;
- (void) pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean :(org_xmlvm_iphone_UINavigationItem*)n1 :(int)n2;
- (org_xmlvm_iphone_UINavigationItem*) popNavigationItemAnimated___boolean :(int)n1;
- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;
- (org_xmlvm_iphone_UINavigationBarDelegate*) getNavigationBarDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UINavigationBarDelegate :(org_xmlvm_iphone_UINavigationBarDelegate*)n1;
- (org_xmlvm_iphone_UINavigationItem*) getTopItem__;
- (org_xmlvm_iphone_UINavigationItem*) getBackitem__;
- (java_util_ArrayList*) getItems__;

@end

