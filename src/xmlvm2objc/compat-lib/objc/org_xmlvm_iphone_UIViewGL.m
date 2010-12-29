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




#import "org_xmlvm_iphone_UIViewGL.h"

// UIViewGL
//----------------------------------------------------------------------------

@implementation org_xmlvm_iphone_UIViewGL : org_xmlvm_iphone_UIView

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

- (org_xmlvm_iphone_gl_CAEAGLLayer*) getEAGLLayer__
{
	org_xmlvm_iphone_gl_CAEAGLLayer* result = [[org_xmlvm_iphone_gl_CAEAGLLayer alloc] init];
	result->glLayer = (CAEAGLLayer*) [super layer];
	
	return result;
}

@end
