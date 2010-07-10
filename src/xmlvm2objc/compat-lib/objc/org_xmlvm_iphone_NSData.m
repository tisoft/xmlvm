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


#import "org_xmlvm_iphone_NSData.h"


// NSData
//----------------------------------------------------------------------------
@implementation NSData (cat_org_xmlvm_iphone_NSData)

+ (NSData*) dataWithContentsOfFile___java_lang_String: (java_lang_String*) path
{
	return_XMLVM_SELECTOR(NSData dataWithContentsOfFile:path)
}

+ (NSData*) dataWithContentsOfURL___org_xmlvm_iphone_NSURL: (org_xmlvm_iphone_NSURL*) url
{
	return_XMLVM_SELECTOR(NSData dataWithContentsOfURL:url)
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

