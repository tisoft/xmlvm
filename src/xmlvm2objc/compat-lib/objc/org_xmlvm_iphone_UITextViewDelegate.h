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
#import "org_xmlvm_iphone_UITextView.h"
#import "org_xmlvm_iphone_NSRange.h"
#import "java_lang_String.h"



@interface org_xmlvm_iphone_UITextViewDelegate : java_lang_Object<UITextViewDelegate>

- (void) __init_org_xmlvm_iphone_UITextViewDelegate__;
- (int) textViewShouldBeginEditing___org_xmlvm_iphone_UITextView :(org_xmlvm_iphone_UITextView*)n1;
- (void) textViewDidBeginEditing___org_xmlvm_iphone_UITextView :(org_xmlvm_iphone_UITextView*)n1;
- (int) textViewShouldEndEditing___org_xmlvm_iphone_UITextView :(org_xmlvm_iphone_UITextView*)n1;
- (void) textViewDidEndEditing___org_xmlvm_iphone_UITextView :(org_xmlvm_iphone_UITextView*)n1;
- (int) textViewShouldChangeTextInRange___org_xmlvm_iphone_UITextView_org_xmlvm_iphone_NSRange_java_lang_String :(org_xmlvm_iphone_UITextView*)n1 :(org_xmlvm_iphone_NSRange*)n2 :(java_lang_String*)n3;
- (void)textViewDidChange___org_xmlvm_iphone_UITextView:(org_xmlvm_iphone_UITextView *)n1;
- (void)textViewDidChangeSelection___org_xmlvm_iphone_UITextView:(org_xmlvm_iphone_UITextView *)n1;

@end

