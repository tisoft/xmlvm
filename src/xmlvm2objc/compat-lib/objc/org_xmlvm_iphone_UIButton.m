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

#import "org_xmlvm_iphone_UIButton.h"


// UIButton
//----------------------------------------------------------------------------
@implementation UIButton (cat_org_xmlvm_iphone_UIButton);

+ (org_xmlvm_iphone_UIButton*) buttonWithType___int :(int) buttonType
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	id button = [UIButton buttonWithType: buttonType];
	[button retain];
	[pool release];
	return button;	
}

- (void) setTitle___java_lang_String_int :(java_lang_String*) label :(int) state
{
	[self setTitle:XMLVM_NULL2NIL(label) forState:state];
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
	[self setTitleColor:XMLVM_NULL2NIL(color) forState:state];
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
	[self setTitleShadowColor:XMLVM_NULL2NIL(color) forState:state];
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
	[self setImage:XMLVM_NULL2NIL(image) forState:state];
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
	[self setBackgroundImage:XMLVM_NULL2NIL(image) forState:state];
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
	[[self titleLabel] setFont:XMLVM_NULL2NIL(font)];
}

- (org_xmlvm_iphone_UIFont*) getFont__
{
    return_XMLVM_SELECTOR([self titleLabel] font)
}

- (void) setAdjustsImageWhenDisabled___boolean:(int) state
{
    [self setAdjustsImageWhenDisabled:state];
}

- (int) isAdjustsImageWhenDisabled__
{
    return [self adjustsImageWhenDisabled];
}

- (void) setAdjustsImageWhenHighlighted___boolean:(int) state
{
    [self setAdjustsImageWhenHighlighted:state];
}

- (int) isAdjustsImageWhenHighlighted__
{
    return [self adjustsImageWhenHighlighted];
}

- (void) setShowsTouchWhenHighlighted___boolean:(int) state
{
    [self setShowsTouchWhenHighlighted:state];
}


- (int) isShowsTouchWhenHighlighted__
{
    return [self showsTouchWhenHighlighted];
}

- (org_xmlvm_iphone_UILabel*) getTitleLabel__
{
    return_XMLVM(titleLabel)
}

- (org_xmlvm_iphone_UIImageView*) getImageView__
{
    return_XMLVM(imageView)
}

@end
