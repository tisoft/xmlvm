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
#import "java_lang_String.h"

// java.lang.Byte
//----------------------------------------------------------------------------
@interface java_lang_Byte : java_lang_Object <NSCopying> {

unsigned char number;

}

+ (java_lang_Class*) _GET_TYPE;
- (id) init;
- (id) copyWithZone:(NSZone *)zone;
- (NSUInteger) hash;
- (void) __init_java_lang_Byte___byte :(unsigned char) b;
- (BOOL) isEqual:(id)anObject;
- (unsigned char) byteValue__;
+ (unsigned char) parseByte___java_lang_String: (java_lang_String *) str;
+ (unsigned char) parseByte___java_lang_String_int: (java_lang_String*) str :(int) radix;

@end
