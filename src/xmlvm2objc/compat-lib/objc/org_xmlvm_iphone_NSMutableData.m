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

#import "org_xmlvm_iphone_NSMutableData.h"

// NSMutableData 
//----------------------------------------------------------------------------
@implementation NSMutableData (cat_org_xmlvm_iphone_NSMutableData)
- (void) __init_org_xmlvm_iphone_NSMutableData__
{
}

- (int) getByte___int: (int) index
{
    return (int) ((unsigned char *) [self bytes])[index];
}

- (void) appendByte___int: (int) value
{
    char c[1];
    c[0] = (char) value;
    [self appendBytes: c length: 1];
}

- (void) appendBytes___byte_ARRAYTYPE: (XMLVMArray*) arr
{
	[self appendBytes:arr->array.b length:arr->length];
}

- (int) byteCount__
{
    return [self length];
}

- (java_lang_String*) toString__
{
    return [[NSMutableString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}
@end

