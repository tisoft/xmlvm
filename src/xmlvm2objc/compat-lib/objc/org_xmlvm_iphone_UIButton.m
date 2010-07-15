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

#import "org_xmlvm_iphone_UIButton.h"


// UIButton
//----------------------------------------------------------------------------
@implementation UIButton (cat_org_xmlvm_iphone_UIButton);

+ (org_xmlvm_iphone_UIButton*) buttonWithType___int :(int) buttonType
{
	return_XMLVM_SELECTOR(UIButton buttonWithType: buttonType)
}

- (void) setTitle___java_lang_String_int :(java_lang_String*) label :(int) state
{
	[self setTitle:label forState:state];
}

- (java_lang_String*) titleForState___int:(int) state
{
	return_XMLVM(titleForState:state)
}

- (java_lang_String*) getCurrentTitle__
{
	return_XMLVM(currentTitle)
}

- (void) setTitleColor___org_xmlvm_iphone_UIColor_int:(org_xmlvm_iphone_UIColor*)color :(int)state
{
	[self setTitleColor:color forState:state];
}

- (org_xmlvm_iphone_UIColor*) titleColorForState___int:(int) state
{
	return_XMLVM(titleColorForState:state)
}

- (org_xmlvm_iphone_UIColor*) getCurrentTitleColor__
{
	return_XMLVM(currentTitleColor)
}

- (void) setTitleShadowColor___org_xmlvm_iphone_UIColor_int:(org_xmlvm_iphone_UIColor*)color :(int)state
{
	[self setTitleShadowColor:color forState:state];
}

- (org_xmlvm_iphone_UIColor*) titleShadowColorForState___int:(int) state;
{
	return_XMLVM(titleShadowColorForState:state)
}

- (org_xmlvm_iphone_UIColor*) getCurrentTitleShadowColor__
{
	return_XMLVM(currentTitleShadowColor)
}

- (void) setImage___org_xmlvm_iphone_UIImage_int :(org_xmlvm_iphone_UIImage*) image :(int) state
{
	[self setImage:image forState:state];
}

- (org_xmlvm_iphone_UIImage*) imageForState___int :(int) state
{
	return_XMLVM(imageForState:state)
}

- (org_xmlvm_iphone_UIImage*) getCurrentImage__
{
	return_XMLVM(currentImage)
}

- (void) setBackgroundImage___org_xmlvm_iphone_UIImage_int: (org_xmlvm_iphone_UIImage*)image :(int)state
{
	[self setBackgroundImage:image forState:state];
}

- (org_xmlvm_iphone_UIImage*) backgroundImageForState___int:(int) state
{
	return_XMLVM(backgroundImageForState:state)
}

- (org_xmlvm_iphone_UIImage*) getCurrentBackgroundImage__
{
	return_XMLVM(currentBackgroundImage)
}

- (void) setFont___org_xmlvm_iphone_UIFont:(org_xmlvm_iphone_UIFont*)font
{
	[[self titleLabel] setFont:font];
}

- (org_xmlvm_iphone_UIFont*) getFont__
{
    return_XMLVM_SELECTOR([self titleLabel] font)
}

@end
