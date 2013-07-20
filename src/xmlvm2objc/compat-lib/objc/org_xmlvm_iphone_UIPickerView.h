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
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_UIView.h"
@class org_xmlvm_iphone_UIPickerViewDataSource;
@class org_xmlvm_iphone_UIPickerViewDelegate;


	
#define org_xmlvm_iphone_UIPickerView UIPickerView

@interface UIPickerView (cat_org_xmlvm_iphone_UIPickerView)

- (void) __init_org_xmlvm_iphone_UIPickerView__;
- (void) __init_org_xmlvm_iphone_UIPickerView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (int) getNumberOfComponents__;
- (int) numberOfRowsInComponent___int :(int)n1;
- (org_xmlvm_iphone_CGSize*) rowSizeForComponent___int :(int)n1;
- (void) reloadAllComponents__;
- (void) reloadComponent___int :(int)n1;
- (int) selectedRowInComponent___int :(int)n1;
- (void) selectRow___int_int_boolean :(int)n1 :(int)n2 :(int)n3;
- (org_xmlvm_iphone_UIView*) viewForRow___int_int :(int)n1 :(int)n2;
- (org_xmlvm_iphone_UIPickerViewDataSource*) getDataSource__;
- (void) setDataSource___org_xmlvm_iphone_UIPickerViewDataSource :(org_xmlvm_iphone_UIPickerViewDataSource*)n1;
- (org_xmlvm_iphone_UIPickerViewDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UIPickerViewDelegate :(org_xmlvm_iphone_UIPickerViewDelegate*)n1;
- (int) showsSelectionIndicator__;
- (void) setShowsSelectionIndicator___boolean :(int)n1;

@end

