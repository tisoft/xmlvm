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




#include "org_xmlvm_iphone_UISegmentedControl.h"

// UISegmentedControl
//----------------------------------------------------------------------------
@implementation UISegmentedControl (cat_org_xmlvm_iphone_UISegmentedControl)

- (void) __init_org_xmlvm_iphone_UISegmentedControl__ {
}

- (void) __init_org_xmlvm_iphone_UISegmentedControl___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) r {
    [self setFrame:[r getCGRect]];
}

- (void) __init_org_xmlvm_iphone_UISegmentedControl___java_util_ArrayList: (java_util_ArrayList*) items
{
	[self initWithItems:items];
}

- (void) insertSegmentWithTitle___java_lang_String_int_boolean:(java_lang_String *) title :(int)segment :(int)animated; {
	[self insertSegmentWithTitle:title atIndex:segment animated:animated];
}

- (void) insertSegmentWithImage___org_xmlvm_iphone_UIImage_int_boolean:(org_xmlvm_iphone_UIImage *) img :(int)segment :(int)animated
{
	[self insertSegmentWithImage:img atIndex:segment animated:animated];
}

- (void) setSelectedSegmentIndex___int:(int) index {
	[self setSelectedSegmentIndex:index];
}

- (void) setSegmentedControlStyle___int:(int) style {
	[self setSegmentedControlStyle:style];
}

- (void) setTitle___java_lang_String_int:(java_lang_String *)title :(int)index {
	[self setTitle:title forSegmentAtIndex:index];
}

- (void) setImage___org_xmlvm_iphone_UIImage_int:(org_xmlvm_iphone_UIImage*) image :(int)index
{
	[self setImage:image forSegmentAtIndex:index];
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

- (void) setMomentary___boolean:(int) mom
{
	[self setMomentary:mom];
}

- (int) isMomentary__
{
	return [self isMomentary];
}


@end
