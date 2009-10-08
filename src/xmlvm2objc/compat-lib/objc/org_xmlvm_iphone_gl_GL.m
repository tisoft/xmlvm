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

#import "org_xmlvm_iphone_gl_GL.h"

// org_xmlvm_iphone_gl_GL
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_gl_GL

+ (void) glEnable___int: (int) param
{
	glEnable(param);
}

+ (void) glDisable___int: (int) param
{
	glDisable(param);
}

+ (void) glEnableClientState___int: (int) param
{
	glEnableClientState(param);
}

+ (void) glDisableClientState___int: (int) param
{
	glDisableClientState(param);
}

+ (void) glGenTextures___int_java_nio_IntBuffer: (int) count: (java_nio_IntBuffer*) buffer
{
	glGenTextures(count, buffer->data);
}

+ (void) glBindTexture___int_int: (int) target: (int) id
{
	glBindTexture(target, id);
}

+ (void) glTexImage2D___int_int_int_int_int_int_int_int_java_nio_ByteBuffer: (int) target: (int) level: (int) iformat: (int) width: (int) height: (int) border: (int) format: (int) type: (java_nio_ByteBuffer*) buffer
{
	glTexImage2D(target, level, iformat, width, height, border, format, type, buffer->data);
}

+ (void) glTexParameteri___int_int_int: (int) target: (int) param: (int) value
{
	glTexParameteri(target, param, value);
}

+ (void) glBlendFunc___int_int: (int) src: (int) dst
{
	glBlendFunc(src, dst);
}

+ (void) glTranslatef___float_float_float: (float) x: (float) y: (float) z
{
	glTranslatef(x,y,z);
}

+ (void) glRotatef___float_float_float_float: (float) deg: (float) x: (float) y: (float) z
{
	glRotatef(deg, x,y,z);
}

+ (void) glScalef___float_float_float: (float) x: (float) y: (float) z
{
	glScalef(x,y,z);
}

+ (void) glClear___int: (int) buffer
{
	glClear(buffer);
}

+ (void) glVertexPointer___int_int_int_java_nio_FloatBuffer: (int) size: (int) type: (int) stride: (java_nio_FloatBuffer*) buffer
{
	glVertexPointer(size,type,stride,buffer->data);
}

+ (void) glColorPointer___int_int_int_java_nio_FloatBuffer: (int) size: (int) type: (int) stride: (java_nio_FloatBuffer*) buffer
{
	glColorPointer(size,type,stride,buffer->data);
}

+ (void) glTexCoordPointer___int_int_int_java_nio_FloatBuffer: (int) size: (int) type: (int) stride: (java_nio_FloatBuffer*) buffer;
{
	glTexCoordPointer(size,type,stride,buffer->data);
}

+ (void) glDrawArrays___int_int_int: (int) mode: (int) first: (int) count
{
	glDrawArrays(mode, first, count);
}

+ (void) glColor4f___float_float_float_float: (float) r: (float) g: (float) b: (float) a
{
	glColor4f(r,g,b,a);
}

+ (void) glLoadIdentity
{
	glLoadIdentity();
}

+ (void) glViewport___int_int_int_int: (int) i: (int) j: (int) width: (int) height
{
	glViewport(i,j,width,height);
}

+ (void) glMatrixMode___int: (int) mode
{
	glMatrixMode(mode);
}

+ (void) glOrthof___float_float_float_float_float_float: (float) a: (float) b: (float) c: (float) d: (float) e: (float) f
{
	glOrthof(a,b,c,d,e,f);
}

+ (void) glClearColor___float_float_float_float: (float) r: (float) g: (float) b: (float) a
{
	glClearColor(r,g,b,a);
}

+ (void) glFrustumf___float_float_float_float_float_float: (float) a: (float) b: (float) c: (float) d: (float) e: (float) f
{
	glFrustumf(a,b,c,d,e,f);
}

+ (void) glLineWidth___float: (float) width
{
	glLineWidth(width);
}

+ (int)  glGenRenderbuffersOES___int: (int) type
{
	int result = 0;

	glGenRenderbuffersOES(type, &result);
	return result;
}

+ (int)  glGenFramebuffersOES___int: (int) type
{
	int result = 0;

	glGenFramebuffersOES(type, &result);
	return result;
}

+ (void) glBindRenderbufferOES___int_int: (int) type: (int) buffer
{
	glBindRenderbufferOES(type, buffer);
}

+ (void) glBindFramebufferOES___int_int: (int) type: (int) buffer
{
	glBindFramebufferOES(type, buffer);
}

+ (void) glFramebufferRenderbufferOES___int_int_int_int: (int) a: (int) b: (int) c: (int) d
{
 	glFramebufferRenderbufferOES(a,b,c,d);
}

+ (int)  glCheckFramebufferStatusOES___int: (int) buffer
{
	glCheckFramebufferStatusOES(buffer);
}

+ (void) glDeleteFramebuffersOES___int_int: (int) type: (int) buffer
{
	glDeleteFramebuffersOES(type, &buffer);
}

+ (void) glDeleteRenderbuffersOES___int_int: (int) type: (int) buffer
{
	glDeleteRenderbuffersOES(type, &buffer);
}

@end
