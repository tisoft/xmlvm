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
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIColor.h"
#import "org_xmlvm_iphone_UIFont.h"
@class org_xmlvm_iphone_UITextFieldDelegate;

// UITextField
//----------------------------------------------------------------------------
typedef UITextField org_xmlvm_iphone_UITextField;
@interface UITextField (cat_org_xmlvm_iphone_UITextField)
- (void) __init_org_xmlvm_iphone_UITextField__;
- (void) __init_org_xmlvm_iphone_UITextField___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) setText___java_lang_String :(NSString*)n1;
- (NSString*) getText__;
- (void) setTextColor___org_xmlvm_iphone_UIColor: (org_xmlvm_iphone_UIColor*) color;
- (void) setBorderStyle___int :(int) style;
- (void) setPlaceholder___java_lang_String: (java_lang_String*) p;
- (org_xmlvm_iphone_UIFont*) getFont__;
- (void) setFont___org_xmlvm_iphone_UIFont: (org_xmlvm_iphone_UIFont*)fnt;
- (void) setTextAlignment___int:(int) al;
- (int) getTextAlignment__;
- (void) setDelegate___org_xmlvm_iphone_UITextFieldDelegate:(org_xmlvm_iphone_UITextFieldDelegate*)newdelegate;
- (org_xmlvm_iphone_UITextFieldDelegate*) getUITextFieldDelegate__;

// UITextInputTraits bindings with java
- (int) getAutocapitalizationType__;
- (void) setAutocapitalizationType___int :(int)capitalization;
- (int) getAutocorrectionType__;
- (void) setAutocorrectionType___int :(int)correction;
- (int) isEnablesReturnKeyAutomatically__;
- (void) setEnablesReturnKeyAutomatically___boolean :(int)returnkey;
- (int) getKeyboardAppearance__;
- (void) setKeyboardAppearance___int :(int)appearance;
- (int) getKeyboardType__;
- (void) setKeyboardType___int :(int)keyboardtype;
- (int) getReturnKeyType__;
- (void) setReturnKeyType___int :(int)returntype;
- (int) isSecureTextEntry__;
- (void) setSecureTextEntry___boolean :(int)secure;
- (void) setAdjustsFontSizeToFitWidth___boolean:(int) value;
- (int) isAdjustsFontSizeToFitWidth__;

@end
