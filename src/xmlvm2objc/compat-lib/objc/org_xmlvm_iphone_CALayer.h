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
#import <QuartzCore/CAAnimation.h>
#import "org_xmlvm_iphone_CAAnimation.h"
#import "org_xmlvm_iphone_CGContext.h"
#import "java_lang_String.h"

@class org_xmlvm_iphone_UIView;



typedef CALayer org_xmlvm_iphone_CALayer;

@interface CALayer (cat_org_xmlvm_iphone_CALayer)
- (void) addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String:(org_xmlvm_iphone_CAAnimation*)animation :(java_lang_String*) key;
- (void) renderInContext___org_xmlvm_iphone_CGContext:(org_xmlvm_iphone_CGContext*)context;
- (id) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UIView:(org_xmlvm_iphone_UIView*) newdelegate;
@end

