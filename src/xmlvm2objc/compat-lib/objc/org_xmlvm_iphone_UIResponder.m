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

#import "org_xmlvm_iphone_UIResponder.h"

// UIResponder
//----------------------------------------------------------------------------
@implementation UIResponder (cat_org_xmlvm_iphone_UIResponder)

- (void) touchesBegan:(java_util_Set *)touches withEvent:(UIEvent *)event
{
	if ([self respondsToSelector:@selector(touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent::)]) {
		[self touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent:touches :event];
	}
	else {
		[[self nextResponder] touchesBegan:touches withEvent:event];
	}
}

- (void) touchesCancelled:(java_util_Set *)touches withEvent:(UIEvent *)event
{
	if ([self respondsToSelector:@selector(touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent::)]) {
		[self touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent:touches :event];
	}
	else {
		[[self nextResponder] touchesCancelled:touches withEvent:event];
	}
}

- (void) touchesEnded:(java_util_Set *)touches withEvent:(UIEvent *)event
{
	if ([self respondsToSelector:@selector(touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent::)]) {
		[self touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent:touches :event];
	}
	else {
		[[self nextResponder] touchesEnded:touches withEvent:event];
	}
}

- (void) touchesMoved:(java_util_Set *)touches withEvent:(UIEvent *)event
{
	if ([self respondsToSelector:@selector(touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent::)]) {
		[self touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent:touches :event];
	}
	else {
		[[self nextResponder] touchesMoved:touches withEvent:event];
	}
}

- (int)resignFirstResponder__
{
	return [self resignFirstResponder];
}

- (int) becomeFirstResponder__
{
	return [self becomeFirstResponder];
}

// Note: it is important this object to be incomplete, or else smart usage of selectors will not be possible
@end
