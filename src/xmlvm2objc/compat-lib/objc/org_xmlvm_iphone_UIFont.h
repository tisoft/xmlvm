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
#import "java_lang_String.h"

// UIFont
//----------------------------------------------------------------------------
typedef UIFont org_xmlvm_iphone_UIFont;
@interface UIFont (cat_org_xmlvm_iphone_UIFont)
- (void) __init_org_xmlvm_iphone_UIFont__;
+ (UIFont*) systemFontOfSize___float: (float)size;
+ (UIFont*) boldSystemFontOfSize___float: (float)size;
+ (UIFont*) italicSystemFontOfSize___float: (float)size;
+ (float) buttonFontSize__;
+ (float) labelFontSize__;
+ (UIFont*) fontWithNameSize___java_lang_String_float:(java_lang_String*)name :(float)size;
- (UIFont *) fontWithSize___float:(float)fontSize;
- (NSString*) familyName__;
- (NSString*) fontName__;
- (float) pointSize__;
@end
