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
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIImage.h"
#import "org_xmlvm_iphone_UIFont.h"
#import "org_xmlvm_iphone_UIColor.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIColor.h"

// UIButton
//----------------------------------------------------------------------------
typedef UIButton org_xmlvm_iphone_UIButton;
@interface UIButton (cat_org_xmlvm_iphone_UIButton)
+ (org_xmlvm_iphone_UIButton*) buttonWithType___int :(int) buttonType;

- (void) setTitle___java_lang_String_int :(java_lang_String*) label :(int) state;
- (java_lang_String*) titleForState___int:(int) state;
- (java_lang_String*) getCurrentTitle__;

- (void) setTitleColor___org_xmlvm_iphone_UIColor_int:(org_xmlvm_iphone_UIColor*)color :(int)state;
- (org_xmlvm_iphone_UIColor*) titleColorForState___int:(int) state;
- (org_xmlvm_iphone_UIColor*) getCurrentTitleColor__;

- (void) setTitleShadowColor___org_xmlvm_iphone_UIColor_int:(org_xmlvm_iphone_UIColor*)color :(int)state;
- (org_xmlvm_iphone_UIColor*) titleShadowColorForState___int:(int) state;
- (org_xmlvm_iphone_UIColor*) getCurrentTitleShadowColor__;

- (void) setImage___org_xmlvm_iphone_UIImage_int :(org_xmlvm_iphone_UIImage*) image :(int) state;
- (org_xmlvm_iphone_UIImage*) imageForState___int :(int) state;
- (org_xmlvm_iphone_UIImage*) getCurrentImage__;

- (void) setBackgroundImage___org_xmlvm_iphone_UIImage_int: (org_xmlvm_iphone_UIImage*)image :(int)state;
- (org_xmlvm_iphone_UIImage*) backgroundImageForState___int:(int) state;
- (org_xmlvm_iphone_UIImage*) getCurrentBackgroundImage__;

- (void) setFont___org_xmlvm_iphone_UIFont:(org_xmlvm_iphone_UIFont*)font;
- (org_xmlvm_iphone_UIFont*) getFont__;
@end
