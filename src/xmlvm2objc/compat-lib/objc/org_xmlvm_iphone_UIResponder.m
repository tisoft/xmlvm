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

static NSMutableDictionary* delegates;


// UIResponder
//----------------------------------------------------------------------------
@implementation UIResponder (cat_org_xmlvm_iphone_UIResponder)

+ (void) initialize
{
	if (delegates == nil) {
		delegates = [[NSMutableDictionary alloc] init];
	}
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    id delegate = [delegates objectForKey: [NSValue valueWithPointer: self]];
    if (delegate != nil) {
        if ([delegate touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event])
        	return;
    }
    
	[self touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
	if (self.nextResponder != nil) {
		[self.nextResponder touchesBegan: touches withEvent:event];
	}
}

- (void) touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event
{
	// Do nothing
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    id delegate = [delegates objectForKey: [NSValue valueWithPointer: self]];
    if (delegate != nil) {
        if ([delegate touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event])
        	return;
    }
    
	[self touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
	if (self.nextResponder != nil) {
		[self.nextResponder touchesCancelled: touches withEvent:event];
	}
}

- (void) touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event
{
	// Do nothing
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    id delegate = [delegates objectForKey: [NSValue valueWithPointer: self]];
    if (delegate != nil) {
        if ([delegate touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event])
        	return;
    }
    
	[self touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
	if (self.nextResponder != nil) {
		[self.nextResponder touchesEnded: touches withEvent:event];
	}
}

- (void) touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event
{
	// Do nothing
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    id delegate = [delegates objectForKey: [NSValue valueWithPointer: self]];
    if (delegate != nil) {
        if ([delegate touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event])
        	return;
    }
    
	[self touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
	if (self.nextResponder != nil) {
		[self.nextResponder touchesMoved: touches withEvent:event];
	}
}

- (void) touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event
{
	// Do nothing
}

- (void) setDelegate___org_xmlvm_iphone_UIResponderDelegate
             :(id<org_xmlvm_iphone_UIResponderDelegate>) delegate
{
    if (delegate != JAVA_NULL) {
        [delegates setObject: delegate forKey: [NSValue valueWithPointer: self]];
    }
    else {
        [delegates removeObjectForKey: [NSValue valueWithPointer: self]];
    }
}

- (BOOL) resignFirstResponder__
{
	return [self resignFirstResponder];
}

@end