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
#import "java_lang_Object.h"
#import "java_nio_ByteBuffer.h"
#import "java_nio_IntBuffer.h"
#import "java_nio_FloatBuffer.h"

// org_xmlvm_iphone_gl_BufferUtils
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_gl_BufferUtils : java_lang_Object {
}

+ (java_nio_ByteBuffer*) createByteBuffer___int: (int) size;
+ (java_nio_IntBuffer*) createIntBuffer___int: (int) size;
+ (java_nio_FloatBuffer*) createFloatBuffer___int: (int) size;


@end
