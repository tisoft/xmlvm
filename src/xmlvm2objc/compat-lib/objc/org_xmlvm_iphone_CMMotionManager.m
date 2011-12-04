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
 
#import "org_xmlvm_iphone_CMMotionManager.h"
#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_CMGyroData.h"

// CMMotionManager
//----------------------------------------------------------------------------
@implementation CMMotionManager (cat_org_xmlvm_iphone_CMMotionManager)

- (void) __init_org_xmlvm_iphone_CMMotionManager__
{	
}

- (void) setGyroUpdateInterval___double: (double)interval
{
    [self setGyroUpdateInterval:interval];
}

- (void) startGyroUpdates__
{
	[self startGyroUpdates];
}

- (void) stopGyroUpdates__
{
	[self stopGyroUpdates];
}

- (BOOL) isGyroActive__
{
	return [self isGyroActive];
}

- (BOOL) isGyroAvailable__
{
	return [self isGyroAvailable];
}

- (CMGyroData *) gyroData__
{
	return [XMLVM_NIL2NULL([self gyroData]) retain];	
}

- (void) startGyroUpdatesToQueue___org_xmlvm_iphone_NSOperationQueue_org_xmlvm_iphone_CMGyroHandler:(org_xmlvm_iphone_NSOperationQueue*) queue
									: (id<org_xmlvm_iphone_CMGyroHandler>) handler {
	[self startGyroUpdatesToQueue:queue withHandler:^(CMGyroData *gyroData, NSError *error) {
	     [handler run___org_xmlvm_iphone_CMGyroData_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_CMGyroData *) gyroData : (org_xmlvm_iphone_NSError *) error]; 
	 }];
}

@end