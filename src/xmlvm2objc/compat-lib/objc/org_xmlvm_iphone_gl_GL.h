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
#import "java_lang_Object.h"
#import "java_nio_FloatBuffer.h"
#import "java_nio_IntBuffer.h"
#import "java_nio_ByteBuffer.h"

@interface org_xmlvm_iphone_gl_GL : java_lang_Object
{
}

+ (void) glEnable___int: (int) param;
+ (void) glDisable___int: (int) param;
+ (void) glEnableClientState___int: (int) param;
+ (void) glDisableClientState___int: (int) param;
+ (void) glGenTextures___int_java_nio_IntBuffer: (int) count: (java_nio_IntBuffer*) buffer;
+ (void) glBindTexture___int_int: (int) target: (int) id;
+ (void) glTexImage2D___int_int_int_int_int_int_int_int_java_nio_ByteBuffer: (int) target: (int) level: (int) iformat: (int) width: (int) height: (int) border: (int) format: (int) type: (java_nio_ByteBuffer*) buffer;
+ (void) glTexParameteri___int_int_int: (int) target: (int) param: (int) value;
+ (void) glBlendFunc___int_int: (int) src: (int) dst; 
+ (void) glTranslatef___float_float_float: (float) x: (float) y: (float) z;
+ (void) glRotatef___float_float_float_float: (float) deg: (float) x: (float) y: (float) z;
+ (void) glScalef___float_float_float: (float) x: (float) y: (float) z;
+ (void) glClear___int: (int) buffer;
+ (void) glVertexPointer___int_int_int_java_nio_FloatBuffer: (int) size: (int) type: (int) stride: (java_nio_FloatBuffer*) buffer;
+ (void) glColorPointer___int_int_int_java_nio_FloatBuffer: (int) size: (int) type: (int) stride: (java_nio_FloatBuffer*) buffer;
+ (void) glTexCoordPointer___int_int_int_java_nio_FloatBuffer: (int) size: (int) type: (int) stride: (java_nio_FloatBuffer*) buffer;
+ (void) glDrawArrays___int_int_int: (int) mode: (int) first: (int) count;
+ (void) glColor4f___float_float_float_float: (float) r: (float) g: (float) b: (float) a;
+ (void) glLoadIdentity__;
+ (void) glViewport___int_int_int_int: (int) i: (int) j: (int) width: (int) height;
+ (void) glMatrixMode___int: (int) mode;
+ (void) glOrthof___float_float_float_float_float_float: (float) a: (float) b: (float) c: (float) d: (float) e: (float) f;
+ (void) glClearColor___float_float_float_float: (float) r: (float) g: (float) b: (float) a;
+ (void) glFrustumf___float_float_float_float_float_float: (float) a: (float) b: (float) c: (float) d: (float) e: (float) f;
+ (void) glLineWidth___float: (float) width;

+ (int)  glGenRenderbuffersOES___int: (int) type;
+ (int)  glGenFramebuffersOES___int: (int) type;
+ (void) glBindRenderbufferOES___int_int: (int) type: (int) buffer;
+ (void) glBindFramebufferOES___int_int: (int) type: (int) buffer;
+ (void) glFramebufferRenderbufferOES___int_int_int_int: (int) a: (int) b: (int) c: (int) d;
+ (int)  glCheckFramebufferStatusOES___int: (int) buffer;
+ (void) glDeleteFramebuffersOES___int_int: (int) type: (int) buffer;
+ (void) glDeleteRenderbuffersOES___int_int: (int) type: (int) buffer;

@end
