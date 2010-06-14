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

#import "org_xmlvm_iphone_UIWindow.h"


// UIWindow
//----------------------------------------------------------------------------
@implementation UIWindow (cat_org_xmlvm_iphone_UIWindow);

- (void) __init_org_xmlvm_iphone_UIWindow__ {
	org_xmlvm_iphone_CGRect * zero = [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:CGRectZero];
	[self __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect:zero];
	[zero release];
}

- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self setFrame:[n1 getCGRect]];
	// We retain this instance to prevent it from begin garbage collected
	// when the UIWindow is not stored in an instance member
	// TODO: this is OK for general usage, but probably this should be handled in a different way
	[self retain];
}

- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view
{
    [self addSubview: view];
}

- (void) makeKeyAndVisible__
{
	[self makeKeyAndVisible];
}

- (org_xmlvm_iphone_CGPoint*) convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIWindow*) window
{
	CGPoint to = [self convertPoint:[point getCGPoint] fromWindow:window];
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:to];
}

- (org_xmlvm_iphone_CGPoint*) convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIWindow*) window
{
	CGPoint to = [self convertPoint:[point getCGPoint] toWindow:window];
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:to];
}

- (org_xmlvm_iphone_CGRect*) convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIWindow*) window
{
	CGRect to = [self convertRect:[rect getCGRect] fromWindow:window];
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:to];
}

- (org_xmlvm_iphone_CGRect*) convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIWindow*) window
{
	CGRect to = [self convertRect:[rect getCGRect] toWindow:window];
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:to];
}

@end
