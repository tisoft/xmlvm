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

#import "org_xmlvm_iphone_UIPickerViewDelegate.h"

/** @author teras */

@implementation org_xmlvm_iphone_UIPickerViewDelegate

// This is a trick to only take into account selectors that have already been overloaded 
- (BOOL)respondsToSelector:(SEL)aSelector {
	XMLVM_REROUTE(aSelector,pickerView:titleForRow:forComponent:,titleForRow___org_xmlvm_iphone_UIPickerView_int_int:::)
	XMLVM_REROUTE(aSelector,pickerView:viewForRow:forComponent:reusingView:,viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView::::)	
	XMLVM_REROUTE(aSelector,pickerView:rowHeightForComponent:,rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int::)	
	XMLVM_REROUTE(aSelector,pickerView:widthForComponent:,widthForComponent___org_xmlvm_iphone_UIPickerView_int::)
    return [super respondsToSelector:aSelector];
}

- (void) __init_org_xmlvm_iphone_UIPickerViewDelegate__ {
}

// The following selector should be only overriden by java! 
//- (float) rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)comp;
//
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
	return [self rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int:pickerView :component];
}

// The following selector should be only overriden by java! 
//- (float) widthForComponent___org_xmlvm_iphone_UIPickerView_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)comp;
//
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
	return [self widthForComponent___org_xmlvm_iphone_UIPickerView_int:pickerView :component];
}

// The following selector should be only overriden by java! 
//- (org_xmlvm_iphone_UIView*) viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp :(org_xmlvm_iphone_UIView*)view;
//
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(org_xmlvm_iphone_UIView *)view
{
	return_XMLVM(viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView:pickerView :row :component :view)
}

// The following selector should be only overriden by java! 
//- (java_lang_String*) titleForRow___org_xmlvm_iphone_UIPickerView_int_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp;
//
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
	return_XMLVM(titleForRow___org_xmlvm_iphone_UIPickerView_int_int:pickerView :row :component)
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
	[self didSelectRow___org_xmlvm_iphone_UIPickerView_int_int:pickerView :row :component];
}

- (void) didSelectRow___org_xmlvm_iphone_UIPickerView_int_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp
{
	// This will get overloaded
}


// Note: it is important this object to be incomplete, or else smart usage of selectors will not be possible
@end

