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

#import "org_xmlvm_iphone_UITextViewDelegate.h"



@implementation org_xmlvm_iphone_UITextViewDelegate;

// Java delegate methods - could be overriden

- (void) __init_org_xmlvm_iphone_UITextViewDelegate__
{
}

- (int) textViewShouldBeginEditing___org_xmlvm_iphone_UITextView :(org_xmlvm_iphone_UITextView*)n1
{
	return YES;
}

- (void) textViewDidBeginEditing___org_xmlvm_iphone_UITextView :(org_xmlvm_iphone_UITextView*)n1
{
}

- (int) textViewShouldEndEditing___org_xmlvm_iphone_UITextView :(org_xmlvm_iphone_UITextView*)n1
{
	return YES;
}

- (void) textViewDidEndEditing___org_xmlvm_iphone_UITextView :(org_xmlvm_iphone_UITextView*)n1
{
}

- (int) textViewShouldChangeTextInRange___org_xmlvm_iphone_UITextView_org_xmlvm_iphone_NSRange_java_lang_String :(org_xmlvm_iphone_UITextView*)n1 :(org_xmlvm_iphone_NSRange*)n2 :(java_lang_String*)n3
{
	return YES;
}

- (void)textViewDidChange___org_xmlvm_iphone_UITextView:(org_xmlvm_iphone_UITextView *)n1
{
}

- (void)textViewDidChangeSelection___org_xmlvm_iphone_UITextView:(org_xmlvm_iphone_UITextView *)n1
{
}


// Actual delegate methods

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
	return [self textViewShouldBeginEditing___org_xmlvm_iphone_UITextView:textView];
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
	[self textViewDidBeginEditing___org_xmlvm_iphone_UITextView:textView];
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView
{
	return [self textViewShouldEndEditing___org_xmlvm_iphone_UITextView:textView];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
	[self textViewDidEndEditing___org_xmlvm_iphone_UITextView:textView];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(java_lang_String *)string
{
	org_xmlvm_iphone_NSRange * javarange = [[org_xmlvm_iphone_NSRange alloc] initWithNSRange:range];
	int status = [self textViewShouldChangeTextInRange___org_xmlvm_iphone_UITextView_org_xmlvm_iphone_NSRange_java_lang_String:textView :javarange :string];
	[javarange release];
	return status;
}

- (void)textViewDidChange:(UITextView *)textView
{
    [self textViewDidChange___org_xmlvm_iphone_UITextView:textView];
}

- (void)textViewDidChangeSelection:(UITextView *)textView
{
        [self textViewDidChangeSelection___org_xmlvm_iphone_UITextView:textView];
}

@end

