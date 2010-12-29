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
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_UITextField.h"
#import "org_xmlvm_iphone_NSRange.h"
#import "java_lang_String.h"



@interface org_xmlvm_iphone_UITextFieldDelegate : java_lang_Object<UITextFieldDelegate>

- (void) __init_org_xmlvm_iphone_UITextFieldDelegate__;
- (int) textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1;
- (void) textFieldDidBeginEditing___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1;
- (int) textFieldShouldEndEditing___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1;
- (void) textFieldDidEndEditing___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1;
- (int) textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String :(org_xmlvm_iphone_UITextField*)n1 :(org_xmlvm_iphone_NSRange*)n2 :(java_lang_String*)n3;
- (int) textFieldShouldClear___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1;
- (int) textFieldShouldReturn___org_xmlvm_iphone_UITextField :(org_xmlvm_iphone_UITextField*)n1;

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
- (void)textFieldDidBeginEditing:(UITextField *)textField;
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
- (void)textFieldDidEndEditing:(UITextField *)textField;
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
- (BOOL)textFieldShouldClear:(UITextField *)textField;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end

