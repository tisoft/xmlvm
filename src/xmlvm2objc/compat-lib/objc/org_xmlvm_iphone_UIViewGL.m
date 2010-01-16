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

#import "org_xmlvm_iphone_UIViewGL.h"

// UIViewGL
//----------------------------------------------------------------------------

@implementation org_xmlvm_iphone_UIViewGL : UIView

+ (Class) layerClass
{
	return objc_getClass("CAEAGLLayer");
}

- (void) __init_org_xmlvm_iphone_UIViewGL
{
	[super __init_org_xmlvm_iphone_UIView];
}

- (void) __init_org_xmlvm_iphone_UIViewGL___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[super __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect:n1];	
}


- (void) drawRect:(CGRect)rect
{
    org_xmlvm_iphone_CGRect* redrawRect = [[org_xmlvm_iphone_CGRect alloc] init];
    redrawRect->origin_org_xmlvm_iphone_CGPoint->x_float = rect.origin.x;
    redrawRect->origin_org_xmlvm_iphone_CGPoint->y_float = rect.origin.y;
    redrawRect->size_org_xmlvm_iphone_CGSize->width_float = rect.size.width;
    redrawRect->size_org_xmlvm_iphone_CGSize->height_float = rect.size.height;
    [self drawRect___org_xmlvm_iphone_CGRect: redrawRect];
    [redrawRect release];
}

- (org_xmlvm_iphone_gl_CAEAGLLayer*) getEAGLLayer__
{
	org_xmlvm_iphone_gl_CAEAGLLayer* result = [[org_xmlvm_iphone_gl_CAEAGLLayer alloc] init];
	result->glLayer = (CAEAGLLayer*) [super layer];
	
	return result;
}

@end
