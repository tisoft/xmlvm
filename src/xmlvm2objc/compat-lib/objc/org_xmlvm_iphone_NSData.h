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
#import <Foundation/Foundation.h>
#import "java_lang_String.h"
#import "org_xmlvm_iphone_NSURL.h"


// NSData
//----------------------------------------------------------------------------
typedef NSData org_xmlvm_iphone_NSData;
@interface NSData (cat_org_xmlvm_iphone_NSData)
+ (NSData*) dataWithContentsOfFile___java_lang_String: (java_lang_String*) path;
+ (NSData*) dataWithContentsOfURL___org_xmlvm_iphone_NSURL: (org_xmlvm_iphone_NSURL*) url;
+ (NSData*) dataWithBytes___byte_ARRAYTYPE:(XMLVMArray*) array;
+ (NSData*) dataWithBytesNoCopy___byte_ARRAYTYPE:(XMLVMArray*) array;
- (void) __init_org_xmlvm_iphone_NSData___byte_ARRAYTYPE:(XMLVMArray*) array;
- (int) getByte___int: (int) index;
- (XMLVMArray*) getBytes__;
- (java_lang_String*) toString__;
- (java_lang_String*) toString___int: (int) encoding;
- (int) writeToFile___java_lang_String_boolean:(java_lang_String*)path :(int)atomically;
- (int) length__;
@end
