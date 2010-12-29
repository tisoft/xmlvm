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

#import "org_xmlvm_iphone_NSTimer.h"


// NSTimer
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSTimer;

+ (org_xmlvm_iphone_NSTimer*) scheduledTimerWithTimeInterval___float_org_xmlvm_iphone_NSTimerDelegate_java_lang_Object_boolean
             :(float) timerInterval
             :(org_xmlvm_iphone_NSTimerDelegate*) t
             :(java_lang_Object*) userInfo
             :(int) r
{
	t=XMLVM_NULL2NIL(t);
    NSTimer * nstimer = [NSTimer scheduledTimerWithTimeInterval:timerInterval
                     target:t
                     selector:NSSelectorFromString(@"timerEvent___java_lang_Object:")
                     userInfo:userInfo
                     repeats:r];
    // Make sure timer is valid even after it fired. If we don't do this, we can't do
    // an invalidate after it fired.
	[nstimer retain];
	
	org_xmlvm_iphone_NSTimer * jtimer = [[org_xmlvm_iphone_NSTimer alloc] init];
	jtimer->timer = nstimer;
	return jtimer;
}

- (void) dealloc
{
	[timer release];
	[super dealloc];
}

- (void) invalidate__
{
	if ([timer isValid]) {
    	[timer invalidate];
    }
}

@end
