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

#import "org_xmlvm_iphone_UIControl.h"

@interface UIControl_members : NSObject {

	id<org_xmlvm_iphone_UIControlDelegate> delegate;
	
}

@property (nonatomic, retain) id<org_xmlvm_iphone_UIControlDelegate> delegate;

- (void) dealloc;

@end

@implementation UIControl_members

@synthesize delegate;

- (void) dealloc
{
	[delegate release];
	[super dealloc];
}

@end


// UIControl
//----------------------------------------------------------------------------
@implementation UIControl (cat_org_xmlvm_iphone_UIControl)

- (void) __init_org_xmlvm_iphone_UIControl__
{
}

- (void) __init_org_xmlvm_iphone_UIControl___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) rect
{
	[self setFrame: [rect getCGRect]];
}


static char memberKey; // key for associative reference for member variables

- (UIControl_members*) getMembers
{
	UIControl_members *members = nil;
	@synchronized(self) {
		members = (UIControl_members *)objc_getAssociatedObject(self, &memberKey);
		if (members == nil) {
			members = [[UIControl_members alloc] init];
			objc_setAssociatedObject(self, &memberKey, members, OBJC_ASSOCIATION_RETAIN);
			[members release];
		}
	}
	return members;
}

// DELEGATE

- (void) addTarget___org_xmlvm_iphone_UIControlDelegate_int
                   :(id<org_xmlvm_iphone_UIControlDelegate>) delegate
                   :(int) controlEvents
{
	UIControl_members* m = [self getMembers];
	m.delegate = delegate;
	[self addTarget:delegate action:@selector(raiseEvent___org_xmlvm_iphone_UIControl_int::)
	      forControlEvents:controlEvents];
}

- (int) isSelected__
{
	return [self isSelected];
}

- (void) setSelected___boolean:(int)selected
{
	[self setSelected:selected];
}

@end
