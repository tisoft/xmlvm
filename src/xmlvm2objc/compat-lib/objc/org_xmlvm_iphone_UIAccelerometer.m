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

#import "org_xmlvm_iphone_UIAccelerometer.h"


@implementation UIAccelerometerDelegateWrapper;

- (id) initWithDelegate: (id<org_xmlvm_iphone_UIAccelerometerDelegate>) del
{
	[super init];
	delegate = del;
	return self;
}

- (void) dealloc
{
	[delegate release];
	[super dealloc];
}

- (void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
	[delegate accelerometerDidAccelerate___org_xmlvm_iphone_UIAccelerometer_org_xmlvm_iphone_UIAcceleration
	    : accelerometer
	    : acceleration];
}

@end



// UIAccelerometer
//----------------------------------------------------------------------------
@implementation UIAccelerometer (cat_org_xmlvm_iphone_UIAccelerometer)

+ (UIAccelerometer*) getSharedAccelerometer
{
	return [UIAccelerometer sharedAccelerometer];
}

- (void) setUpdateInterval___double: (double)interval
{
    [self setUpdateInterval:interval];
}

- (void) setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate :(id<org_xmlvm_iphone_UIAccelerometerDelegate>) delegate
{
	UIAccelerometerDelegateWrapper* wrapper = [[UIAccelerometerDelegateWrapper alloc] initWithDelegate: delegate];
	[self setDelegate: wrapper];
}

@end