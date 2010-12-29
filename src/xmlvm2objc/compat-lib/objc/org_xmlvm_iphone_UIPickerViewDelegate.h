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
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIPickerView.h"
#import "org_xmlvm_iphone_UIView.h"



@interface org_xmlvm_iphone_UIPickerViewDelegate : java_lang_Object <UIPickerViewDelegate>

- (void) __init_org_xmlvm_iphone_UIPickerViewDelegate__;
- (void) didSelectRow___org_xmlvm_iphone_UIPickerView_int_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp;

// Unsafe selectors. DO NOT IMPLEMENT.
// They SHOULD produce errors "incomplete implementation of class, or else dynamic callback will not be possible
- (float) rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)comp;
- (float) widthForComponent___org_xmlvm_iphone_UIPickerView_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)comp;
- (org_xmlvm_iphone_UIView*) viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp :(org_xmlvm_iphone_UIView*)view;
- (java_lang_String*) titleForRow___org_xmlvm_iphone_UIPickerView_int_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp;

@end

