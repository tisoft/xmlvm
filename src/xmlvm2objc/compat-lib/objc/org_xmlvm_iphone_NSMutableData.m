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

