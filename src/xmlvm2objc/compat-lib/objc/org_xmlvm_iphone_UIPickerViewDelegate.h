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
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIPickerView.h"
#import "org_xmlvm_iphone_UIView.h"

/** @author teras */

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

