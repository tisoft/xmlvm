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
#import "java_util_List.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGAffineTransform.h"
#import "org_xmlvm_iphone_CALayer.h"
#import "org_xmlvm_iphone_gl_CAEAGLLayer.h"

// UIView
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIView : UIView
- (void) drawRect:(CGRect)rect;
+ (Class) layerClass__;
@end

@interface UIView (cat_org_xmlvm_iphone_UIView)
- (void) __init_org_xmlvm_iphone_UIView__;
- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect_java_lang_String :(org_xmlvm_iphone_CGRect*)n1:(java_lang_String*)layer;
- (org_xmlvm_iphone_CGRect*) getBounds__;
- (void) setFrame___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) frame;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view;
- (void) insertSubview___org_xmlvm_iphone_UIView_int :(org_xmlvm_iphone_UIView*) view :(int) idx;
- (void) removeFromSuperview__;
- (void) bringSubviewToFront___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view;
- (java_util_List*) getSubviews__;
- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)transform;
- (void) setNeedsDisplay__;
- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) setOpaque___boolean :(int) opaque;
- (void) setClearsContextBeforeDrawing___boolean :(int) clear;
- (org_xmlvm_iphone_gl_CAEAGLLayer*) getEAGLLayer__;
@end
