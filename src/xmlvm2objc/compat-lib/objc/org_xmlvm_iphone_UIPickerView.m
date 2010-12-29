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

#import "org_xmlvm_iphone_UIPickerView.h"
#import "org_xmlvm_iphone_UIPickerViewDataSource.h"
#import "org_xmlvm_iphone_UIPickerViewDelegate.h"



@implementation UIPickerView (cat_org_xmlvm_iphone_UIPickerView)

- (void) __init_org_xmlvm_iphone_UIPickerView__ {
}

- (void) __init_org_xmlvm_iphone_UIPickerView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1 {
	[self setFrame:[n1 getCGRect]];
}

- (int) getNumberOfComponents__ {
	return self.numberOfComponents;
}

- (int) numberOfRowsInComponent___int :(int)n1 {
	return [self numberOfRowsInComponent:n1];
}

- (org_xmlvm_iphone_CGSize*) rowSizeForComponent___int :(int)n1 {
	CGSize size = [self rowSizeForComponent:n1];
	org_xmlvm_iphone_CGSize *s = [[org_xmlvm_iphone_CGSize alloc] init];
	s->height_float = size.height;
	s->width_float = size.width;
	return s;
}

- (void) reloadAllComponents__ {
	[self reloadAllComponents];
}

- (void) reloadComponent___int :(int)n1 {
	[self reloadComponent:n1];
}

- (int) selectedRowInComponent___int :(int)n1 {
	return [self selectedRowInComponent:n1];
}

- (void) selectRow___int_int_boolean :(int)n1 :(int)n2 :(int)n3 {
	[self selectRow:n1 inComponent:n2 animated:n3];
}

- (org_xmlvm_iphone_UIView*) viewForRow___int_int :(int)n1 :(int)n2 {
	return_XMLVM(viewForRow:n1 forComponent:n2)
}

- (org_xmlvm_iphone_UIPickerViewDataSource*) getDataSource__ {
	return_XMLVM(dataSource)
}

- (void) setDataSource___org_xmlvm_iphone_UIPickerViewDataSource :(org_xmlvm_iphone_UIPickerViewDataSource*)newsource {
	XMLVM_PROPERTY(dataSource,newsource)
}

- (org_xmlvm_iphone_UIPickerViewDelegate*) getDelegate__ {
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_UIPickerViewDelegate :(org_xmlvm_iphone_UIPickerViewDelegate*)newdelegate {
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (int) showsSelectionIndicator__ {
	return self.showsSelectionIndicator;
}

- (void) setShowsSelectionIndicator___boolean :(int)n1 {
	self.showsSelectionIndicator = n1;
}


@end

