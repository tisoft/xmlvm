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
#import "java_util_List.h"
#import "org_xmlvm_iphone_NSURL.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_UIFont.h"
#import "org_xmlvm_iphone_NSData.h"

// NSString
//----------------------------------------------------------------------------
#define org_xmlvm_iphone_NSString NSString
@interface NSString (cat_NSString)
+ (java_lang_String*) stringWithContentsOfFile___java_lang_String: (java_lang_String*) path;
+ (java_lang_String*) stringWithContentsOfURL___org_xmlvm_iphone_NSURL: (org_xmlvm_iphone_NSURL*) url;
+ (java_lang_String*) stringWithContentsOfURL___org_xmlvm_iphone_NSURL_int
               : (org_xmlvm_iphone_NSURL*) url
               : (int)encoding;
+ (java_lang_String*) stringByAddingPercentEscapesUsingEncoding___java_lang_String_int:(java_lang_String*)url :(int)encoding;
+ (void) drawAtPoint___java_lang_String_org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIFont
               :(java_lang_String*) texttodisplay
               :(org_xmlvm_iphone_CGPoint*) point
               :(org_xmlvm_iphone_UIFont*) font;
+ (org_xmlvm_iphone_CGSize*) sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont
               :(java_lang_String*) text
               :(org_xmlvm_iphone_UIFont*) font;
+ (java_util_List*) componentsSeparatedByString___java_lang_String_java_lang_String 
               :(java_lang_String*)source 
               :(java_lang_String*)separator;
+ (org_xmlvm_iphone_NSData*) dataUsingEncoding___java_lang_String_int:(java_lang_String*)string :(int)encoding;
+ (java_lang_String*) initWithData___org_xmlvm_iphone_NSData_int:(org_xmlvm_iphone_NSData*) data :(int)encoding;

+ (org_xmlvm_iphone_CGSize*) sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont_org_xmlvm_iphone_CGSize_int
               :(java_lang_String*) text
               :(org_xmlvm_iphone_UIFont*) font
               :(org_xmlvm_iphone_CGSize*) constraint
               :(int) lineBreakMode;
+ (int) writeToFile___java_lang_String_java_lang_String_boolean_int:(java_lang_String*)string :(java_lang_String*)path :(int)atomically :(int)encoding;

+ (int) compare___java_lang_String_java_lang_String_int:(java_lang_String*)from :(java_lang_String*)with :(int)options;

@end
