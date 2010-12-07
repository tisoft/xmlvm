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
