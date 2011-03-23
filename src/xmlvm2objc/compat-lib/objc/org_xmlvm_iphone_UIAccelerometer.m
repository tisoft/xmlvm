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

#import "org_xmlvm_iphone_UIAccelerometer.h"


@implementation UIAccelerometerDelegateWrapper;

- (id) initWithDelegate: (id<org_xmlvm_iphone_UIAccelerometerDelegate>) del
{
	[super init];
	delegate = [del retain];
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

+ (UIAccelerometer*) sharedAccelerometer__
{
    return_XMLVM_SELECTOR(UIAccelerometer sharedAccelerometer)
}

- (void) setUpdateInterval___double: (double)interval
{
    [self setUpdateInterval:interval];
}

- (void) setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate :(id<org_xmlvm_iphone_UIAccelerometerDelegate>) delegate
{
    UIAccelerometerDelegateWrapper* wrapper = [[UIAccelerometerDelegateWrapper alloc] initWithDelegate: XMLVM_NULL2NIL(delegate)];
    [self setDelegate: wrapper];
    XMLVM_PROPERTY_WITHCOMMAND(accdelegate, wrapper,)
    [wrapper release];
}

@end
