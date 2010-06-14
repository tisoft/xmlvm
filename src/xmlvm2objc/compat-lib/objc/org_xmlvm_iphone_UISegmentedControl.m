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


/** @author teras */

#include "org_xmlvm_iphone_UISwitch.h"

// UISegmentedControl
//----------------------------------------------------------------------------
@implementation UISegmentedControl (cat_org_xmlvm_iphone_UISegmentedControl)

- (void) __init_org_xmlvm_iphone_UISegmentedControl {
}

- (void) __init_org_xmlvm_iphone_UISegmentedControl___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) r {
    [self setFrame:[r getCGRect]];
}

- (void) insertSegmentWithTitle___java_lang_String_int_boolean:(NSString *) title :(int)segment :(int)animated; {
	[self insertSegmentWithTitle:title atIndex:segment animated:animated];
}

- (void) setSelectedSegmentIndex___int:(int) index {
	[self setSelectedSegmentIndex:index];
}

- (void) setSegmentedControlStyle___int:(int) style {
	[self setSegmentedControlStyle:style];
}

- (void) setTitle___java_lang_String_int:(NSString *)title :(int)index {
	[self setTitle:title forSegmentAtIndex:index];
}

- (NSString *) getTitleForSegmentAtIndex___int:(int) index {
	return [self titleForSegmentAtIndex:index];
}

- (void) removeSegmentAtIndex___int_boolean:(int)index :(int)animated {
	[self removeSegmentAtIndex:index animated:animated];
}


- (int) numberOfSegments__ {
	return self.numberOfSegments;
}

- (void) removeAllSegments__ {
	[self removeAllSegments];
}

- (int) getSelectedSegmentIndex__ {
	return self.selectedSegmentIndex;
}

- (int) getSegmentedControlStyle__ {
	return self.segmentedControlStyle;
}

- (UIColor*) getTintColor__
{
	return_XMLVM(tintColor)
}


- (void) setTintColor___org_xmlvm_iphone_UIColor :(UIColor*) tint
{
	[self setTintColor:tint];
}


@end
