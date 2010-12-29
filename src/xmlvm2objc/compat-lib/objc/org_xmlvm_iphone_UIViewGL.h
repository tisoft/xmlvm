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
#import "java_util_List.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGAffineTransform.h"
#import "org_xmlvm_iphone_CALayer.h"
#import "org_xmlvm_iphone_gl_CAEAGLLayer.h"
#import "org_xmlvm_iphone_UIColor.h"
#import "org_xmlvm_iphone_UIView.h"

// UIViewGL
//----------------------------------------------------------------------------

/*
 * We have to use inheritance to override drawRect because we cannot achieve
 * the same with categories.
 */

@interface org_xmlvm_iphone_UIViewGL : org_xmlvm_iphone_UIView
+ (Class) layerClass;
- (void) __init_org_xmlvm_iphone_UIViewGL;
- (void) __init_org_xmlvm_iphone_UIViewGL___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (org_xmlvm_iphone_gl_CAEAGLLayer*) getEAGLLayer__;
- (void) __init_org_xmlvm_iphone_UIViewGL___org_xmlvm_iphone_CGRect;
- (void) drawRect:(CGRect)rect;
@end
