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


/** @author teras */

#import "xmlvm.h"
#import "java_util_List.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGAffineTransform.h"
#import "org_xmlvm_iphone_CALayer.h"
#import "org_xmlvm_iphone_gl_CAEAGLLayer.h"
#import "org_xmlvm_iphone_UIColor.h"

// UIViewGL
//----------------------------------------------------------------------------

/*
 * We have to use inheritance to override drawRect because we cannot achieve
 * the same with categories.
 */

@interface org_xmlvm_iphone_UIViewGL : UIView
+ (Class) layerClass;
- (void) __init_org_xmlvm_iphone_UIViewGL;
- (void) __init_org_xmlvm_iphone_UIViewGL___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (org_xmlvm_iphone_gl_CAEAGLLayer*) getEAGLLayer__;
- (void) __init_org_xmlvm_iphone_UIViewGL___org_xmlvm_iphone_CGRect;
- (void) drawRect:(CGRect)rect;
@end
