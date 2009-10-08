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

#import "org_xmlvm_iphone_gl_EAGLContext.h"


// org_xmlvm_iphone_gl_EAGLContext
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_gl_EAGLContext;


+ (void) setCurrentContext___org_xmlvm_iphone_gl_EAGLContext: (org_xmlvm_iphone_gl_EAGLContext*) context
{
	[EAGLContext setCurrentContext: context->context];
}

- (void) __init_org_xmlvm_iphone_gl_EAGLContext___int: (int) api
{	
	[self init];
	
	self->context = [[EAGLContext alloc] initWithAPI:api];
}

- (void) presentRenderBuffer___int: (int) buffer
{
	[self->context presentRenderbuffer:buffer];
}

- (void) release
{
	[self->context release];
}

- (void) dealloc
{
	[self release];
}

- (void) renderBufferStorage___int_org_xmlvm_iphone_gl_EAGLDrawable: (int) buffer: (org_xmlvm_iphone_gl_EAGLDrawable*) drawable
{
	[self->context renderbufferStorage:buffer fromDrawable:drawable->drawable];
}

@end


