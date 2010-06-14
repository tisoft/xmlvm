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

#import "org_xmlvm_iphone_UILabel.h"


// UILabel
//----------------------------------------------------------------------------
@implementation UILabel (cat_org_xmlvm_iphone_UILabel);

- (void) __init_org_xmlvm_iphone_UILabel__
{
}

- (void) __init_org_xmlvm_iphone_UILabel___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self setFrame: [n1 getCGRect]];
}


- (void) setText___java_lang_String :(NSString*) text
{
    [self setText: text];
}


- (void) setTextAlignment___int :(int) alignment
{
	UITextAlignment a;
	switch (alignment) {
	case 0:
		a = UITextAlignmentLeft;
		break;
	case 1:
		a = UITextAlignmentCenter;
		break;
	case 2:
		a = UITextAlignmentRight;
		break;
	}
    self.textAlignment = a;
}

- (void) setTextColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*) color
{
	self.textColor = color;
}

- (void) setFont___org_xmlvm_iphone_UIFont :(org_xmlvm_iphone_UIFont*) font
{
	[self setFont: font];
}

- (org_xmlvm_iphone_UIFont*) getFont__
{
	return_XMLVM(font)
}

- (NSString*) getText__
{
	return_XMLVM(text)
}

- (int) getLineBreakMode__
{
	return [self lineBreakMode];
}

- (void) setLineBreakMode___int: (int) lineBreakMode
{
	[self setLineBreakMode: lineBreakMode];
}

- (int) getNumberOfLines__
{
	return [self numberOfLines];
}

- (void) setNumberOfLines___int: (int) numberOfLines
{
	[self setNumberOfLines: numberOfLines];
}

- (void) setShadowColor___org_xmlvm_iphone_UIColor:(org_xmlvm_iphone_UIColor*) scolor
{
	[self setShadowColor:scolor];
}

- (org_xmlvm_iphone_UIColor*) getShadowColor__
{
	return_XMLVM(shadowColor)
}

- (void) setShadowOffset___org_xmlvm_iphone_CGSize:(org_xmlvm_iphone_CGSize*) offset
{
	[self setShadowOffset:[offset getCGSize]];
}

- (org_xmlvm_iphone_CGSize*) getShadowOffset__
{
	return [[org_xmlvm_iphone_CGSize alloc] initWithCGSize:[self shadowOffset]];
}


- (void) setAdjustsFontSizeToFitWidth___boolean:(int) value
{
	[self setAdjustsFontSizeToFitWidth:value];
}

- (int) isAdjustsFontSizeToFitWidth__
{
	return [self adjustsFontSizeToFitWidth];
}

@end
