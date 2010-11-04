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
#import <QuartzCore/CAAnimation.h>
#import "org_xmlvm_iphone_CAAnimation.h"
#import "org_xmlvm_iphone_CGContext.h"
#import "java_lang_String.h"

@class org_xmlvm_iphone_UIView;

/** @author teras */

typedef CALayer org_xmlvm_iphone_CALayer;

@interface CALayer (cat_org_xmlvm_iphone_CALayer)
- (void) addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String:(org_xmlvm_iphone_CAAnimation*)animation :(java_lang_String*) key;
- (void) renderInContext___org_xmlvm_iphone_CGContext:(org_xmlvm_iphone_CGContext*)context;
- (id) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UIView:(org_xmlvm_iphone_UIView*) newdelegate;
@end

