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
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_UIColor.h"
#import "org_xmlvm_iphone_UIFont.h"

// UILabel
//----------------------------------------------------------------------------
#define org_xmlvm_iphone_UILabel UILabel
@interface UILabel (cat_org_xmlvm_iphone_UILabel)
- (void) __init_org_xmlvm_iphone_UILabel__;
- (void) __init_org_xmlvm_iphone_UILabel___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) setText___java_lang_String :(NSString*) text;
- (void) setTextAlignment___int :(int) alignment;
- (void) setTextColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*) color;
- (void) setFont___org_xmlvm_iphone_UIFont :(org_xmlvm_iphone_UIFont*) font;
- (org_xmlvm_iphone_UIFont*) getFont__;
- (NSString*) getText__;
- (int) getLineBreakMode__;
- (void) setLineBreakMode___int: (int) lineBreakMode;
- (int) getNumberOfLines__;
- (void) setNumberOfLines___int: (int) numberOfLines;
- (void) setShadowColor___org_xmlvm_iphone_UIColor:(org_xmlvm_iphone_UIColor*) scolor;
- (org_xmlvm_iphone_UIColor*) getShadowColor__;
- (void) setShadowOffset___org_xmlvm_iphone_CGSize:(org_xmlvm_iphone_CGSize*) offset;
- (org_xmlvm_iphone_CGSize*) getShadowOffset__;
- (void) setAdjustsFontSizeToFitWidth___boolean:(int) value;
- (int) isAdjustsFontSizeToFitWidth__;
@end
