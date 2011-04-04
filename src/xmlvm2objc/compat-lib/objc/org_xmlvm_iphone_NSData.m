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


#import "org_xmlvm_iphone_NSData.h"


// NSData
//----------------------------------------------------------------------------
@implementation NSData (cat_org_xmlvm_iphone_NSData)

+ (NSData*) dataWithContentsOfFile___java_lang_String: (java_lang_String*) path
{
	return [[NSData alloc] initWithContentsOfFile:path];
}

+ (NSData*) dataWithContentsOfURL___org_xmlvm_iphone_NSURL: (org_xmlvm_iphone_NSURL*) url
{
	return [[NSData alloc] initWithContentsOfURL:url];
}

+ (NSData*) dataWithBytes___byte_ARRAYTYPE:(XMLVMArray*) array
{
    return [[NSData dataWithBytes:array->array.data length:array->length] retain];
}

- (void) __init_org_xmlvm_iphone_NSData___byte_ARRAYTYPE:(XMLVMArray*) array
{
    [self initWithBytes:array->array.data length:array->length];
}

- (int) getByte___int: (int) index;
{
    return (int) ((unsigned char *) [self bytes])[index];
}

- (XMLVMArray*) getBytes__
{
	return [XMLVMArray createSingleDimensionWithType:3/*byte*/ size:[self length] andData:(void*)[self bytes]];
}
	
- (java_lang_String*) toString__
{
    return [[NSMutableString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

- (java_lang_String*) toString___int: (int) encoding
{
    return [[NSMutableString alloc] initWithData:self encoding:encoding];
}

- (int) writeToFile___java_lang_String_boolean:(java_lang_String*)path :(int)atomically
{
	return [self writeToFile:path atomically:atomically];
}

- (int) length__
{
	return [self length];
}

@end

