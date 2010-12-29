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

#import "org_xmlvm_iphone_UITextFieldDelegate.h"



@implementation org_xmlvm_iphone_UITextFieldDelegate;

// Java delegate methods - could be overriden

- (void) __init_org_xmlvm_iphone_UITextFieldDelegate__
{
}

- (int) textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1
{
	return YES;
}

- (void) textFieldDidBeginEditing___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1
{
}

- (int) textFieldShouldEndEditing___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1
{
	return YES;
}

- (void) textFieldDidEndEditing___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1
{
}

- (int) textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String :(org_xmlvm_iphone_UITextField*)n1 :(org_xmlvm_iphone_NSRange*)n2 :(java_lang_String*)n3
{
	return YES;
}

- (int) textFieldShouldClear___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1
{
	return YES;
}

- (int) textFieldShouldReturn___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1
{
	return YES;
}


// Actual delegate methods

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
	return [self textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField:textField];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
	[self textFieldDidBeginEditing___org_xmlvm_iphone_UITextField:textField];
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
	return [self textFieldShouldEndEditing___org_xmlvm_iphone_UITextField:textField];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
	[self textFieldDidEndEditing___org_xmlvm_iphone_UITextField:textField];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(java_lang_String *)string
{
	org_xmlvm_iphone_NSRange * javarange = [[org_xmlvm_iphone_NSRange alloc] initWithNSRange:range];
	int status = [self textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String:textField :javarange :string];
	[javarange release];
	return status;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField
{
	return [self textFieldShouldClear___org_xmlvm_iphone_UITextField:textField];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	return [self textFieldShouldReturn___org_xmlvm_iphone_UITextField:textField];
}



@end

