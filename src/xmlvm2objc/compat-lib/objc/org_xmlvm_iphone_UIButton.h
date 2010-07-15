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
