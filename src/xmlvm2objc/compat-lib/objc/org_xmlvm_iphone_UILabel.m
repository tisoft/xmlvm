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
