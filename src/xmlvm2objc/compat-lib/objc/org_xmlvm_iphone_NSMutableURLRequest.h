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
#import "org_xmlvm_iphone_NSURL.h"
#import "org_xmlvm_iphone_NSData.h"
#import "java_lang_String.h"


// NSMutableURLRequest
//----------------------------------------------------------------------------
typedef NSMutableURLRequest org_xmlvm_iphone_NSMutableURLRequest;
@interface NSMutableURLRequest (cat_NSMutableURLRequest)
+ (org_xmlvm_iphone_NSMutableURLRequest*) requestWithURL___org_xmlvm_iphone_NSURL :(org_xmlvm_iphone_NSURL*)url;
+ (org_xmlvm_iphone_NSMutableURLRequest*) requestWithURL___org_xmlvm_iphone_NSURL_int_double :(org_xmlvm_iphone_NSURL*)url :(int)cachePolicy :(double)timeout;
- (void) __init_org_xmlvm_iphone_NSMutableURLRequest___org_xmlvm_iphone_NSURL :(org_xmlvm_iphone_NSURL*)url;
- (void) __init_org_xmlvm_iphone_NSMutableURLRequest___org_xmlvm_iphone_NSURL_int_double :(org_xmlvm_iphone_NSURL*)url :(int)cachePolicy :(double)timeout;
- (void) addValueForHTTPHeaderField___java_lang_String_java_lang_String: (java_lang_String*) value
																	   :(java_lang_String*) headerField;
- (void) setHTTPMethod___java_lang_String :(java_lang_String*)n1;
- (void) setHTTPBody___org_xmlvm_iphone_NSData :(org_xmlvm_iphone_NSData*)n1;
- (void) setTimeoutInterval___double :(double)n1;
- (void) setURL___org_xmlvm_iphone_NSURL :(org_xmlvm_iphone_NSURL*)n1;
@end
