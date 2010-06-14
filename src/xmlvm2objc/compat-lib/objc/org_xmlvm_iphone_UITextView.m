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
#import "org_xmlvm_iphone_UITextView.h"

/** @author teras */

// UITextView
//----------------------------------------------------------------------------
@implementation UITextView (cat_org_xmlvm_iphone_UITextView);

- (void) __init_org_xmlvm_iphone_UITextView__
{
}

- (void) __init_org_xmlvm_iphone_UITextView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
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

- (UIFont*) getFont__
{
   return_XMLVM(font)
}

- (void) setFont___org_xmlvm_iphone_UIFont: (org_xmlvm_iphone_UIFont*)fnt
{
	[self setFont:fnt];
}

- (int) isEditable__
{
	return [self isEditable];
}

- (void) setEditable___boolean :(int)edit
{
	[self setEditable:edit];
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

@end
