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
#import "org_xmlvm_iphone_CGRect.h"
#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UIColor.h"

/** @author teras */

typedef UIToolbar org_xmlvm_iphone_UIToolbar;

@interface UIToolbar (cat_org_xmlvm_iphone_UIToolbar)

- (void) __init_org_xmlvm_iphone_UIToolbar__;
- (void) __init_org_xmlvm_iphone_UIToolbar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (int) getBarStyle__;
- (void) setBarStyle___int :(int)n1;
- (org_xmlvm_iphone_UIColor*) getTintColor__;
- (void) setTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)n1;
- (int) isTranslucent__;
- (void) setTranslucent___boolean :(int)n1;
- (java_util_ArrayList*) getItems__;
- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;

@end

