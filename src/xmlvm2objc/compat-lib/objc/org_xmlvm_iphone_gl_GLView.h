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

#import <UIKit/UIKit.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import "org_xmlvm_iphone_CGRect.h"

@interface org_xmlvm_iphone_gl_GLView : UIView
{
@private
	/* The pixel dimensions of the backbuffer */
	GLint backingWidth;
	GLint backingHeight;
	
	EAGLContext *context;
	
	/* OpenGL names for the renderbuffer and framebuffers used to render to this view */
	GLuint viewRenderbuffer, viewFramebuffer;
	
	/* OpenGL name for the depth buffer that is attached to viewFramebuffer, if it exists (0 if it does not exist) */
	GLuint depthRenderbuffer;
	
	/* OpenGL name for the sprite texture */
	GLuint spriteTexture;
	
	NSTimer *animationTimer;
	NSTimeInterval animationInterval;
	int _isViewSetup;
}

- (void) __init_org_xmlvm_iphone_gl_GLView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;

- (void)startAnimation__;
- (void)stopAnimation__;
- (BOOL)createFramebuffer__;
- (void)destroyFramebuffer__;

- (void)setupView__;
- (void)drawView__;
- (void)renderView__;

@property NSTimeInterval animationInterval;

@end
