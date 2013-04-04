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
#import "org_xmlvm_iphone_UITextField.h"
#import "org_xmlvm_iphone_UITextFieldDelegate.h"

IMPLEMENTATION_VIEW(UITextField)

- (void) __init_org_xmlvm_iphone_UITextField__
{
}

- (void) __init_org_xmlvm_iphone_UITextField___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self setFrame:[n1 getCGRect]];
}


- (void) setText___java_lang_String :(NSString*)n1
{
    [self setText: n1];
}

- (NSString*) getText__
{
	return_XMLVM(text)
}

- (void) setTextColor___org_xmlvm_iphone_UIColor: (org_xmlvm_iphone_UIColor*) color
{
	[self setTextColor: color];
}

- (void) setBorderStyle___int :(int) style
{
	UITextBorderStyle s;
	switch (style) {
		case 0:
			s = UITextBorderStyleNone;
			break;
		case 1:
			s = UITextBorderStyleLine;
			break;
		case 2:
			s = UITextBorderStyleBezel;
			break;
		case 3:
			s = UITextBorderStyleRoundedRect;
			break;
	}
	self.borderStyle = s;
}

- (void) setPlaceholder___java_lang_String: (java_lang_String*) p
{
	self.placeholder = p;
}

- (org_xmlvm_iphone_UIFont*) getFont__
{
	return_XMLVM(font)
}

- (void) setFont___org_xmlvm_iphone_UIFont: (org_xmlvm_iphone_UIFont*)fnt
{
	[self setFont:fnt];
}

- (void) setTextAlignment___int:(int) al
{
	[self setTextAlignment:al];
}

- (int) getTextAlignment__
{
	return [self textAlignment];
}

- (void) setDelegate___org_xmlvm_iphone_UITextFieldDelegate:(org_xmlvm_iphone_UITextFieldDelegate*)newdelegate
{
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (org_xmlvm_iphone_UITextFieldDelegate*) getUITextFieldDelegate__
{
	return_XMLVM(delegate)
}

// UITextInputTraits bindings with java

- (int) getAutocapitalizationType__
{
	return [self autocorrectionType];
}

- (void) setAutocapitalizationType___int :(int)capitalization
{
	[self setAutocapitalizationType:capitalization];
}

- (int) getAutocorrectionType__
{
	return [self autocorrectionType];
}

- (void) setAutocorrectionType___int :(int)correction
{
	[self setAutocorrectionType:correction];
}

- (int) isEnablesReturnKeyAutomatically__
{
	return [self enablesReturnKeyAutomatically];
}

- (void) setEnablesReturnKeyAutomatically___boolean :(int)returnkey
{
	[self setEnablesReturnKeyAutomatically:returnkey];
}

- (int) getKeyboardAppearance__
{
	return [self keyboardAppearance];
}

- (void) setKeyboardAppearance___int :(int)appearance
{
	[self setKeyboardAppearance:appearance];
}

- (int) getKeyboardType__
{
	return [self keyboardType];
}

- (void) setKeyboardType___int :(int)keyboardtype
{
	[self setKeyboardType:keyboardtype];
}

- (int) getReturnKeyType__
{
	return [self returnKeyType];
}

- (void) setReturnKeyType___int :(int)returntype
{
	[self setReturnKeyType:returntype];
}

- (int) isSecureTextEntry__
{
	return [self isSecureTextEntry];
}

- (void) setSecureTextEntry___boolean :(int)secure
{
	[self setSecureTextEntry:secure];
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
