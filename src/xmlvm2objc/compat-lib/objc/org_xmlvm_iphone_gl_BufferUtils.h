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
