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

#import "org_xmlvm_iphone_UIApplication.h"



// UIApplication
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIApplication;

- (void) __init_org_xmlvm_iphone_UIApplication__
{
}

+ (org_xmlvm_iphone_UIApplication*) sharedApplication__
{
	return [[UIApplication sharedApplication] retain];
}

- (void) applicationDidBecomeActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app
{    
	// Do nothing here
}

- (void) applicationWillResignActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app
{
    // Do nothing here
}

- (void) applicationDidBecomeActive: (org_xmlvm_iphone_UIApplication*) app
{    
	[self applicationDidBecomeActive___org_xmlvm_iphone_UIApplication: self];
}

- (void) applicationWillResignActive: (org_xmlvm_iphone_UIApplication*) app
{
	[self applicationWillResignActive___org_xmlvm_iphone_UIApplication: self];
}

- (void) applicationDidFinishLaunching: (UIApplication*) app
{
    [self applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication: self];
}

- (void) applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app
{
    // Do nothing here
}

- (void) applicationWillTerminate: (UIApplication*) app
{
    [self applicationWillTerminate___org_xmlvm_iphone_UIApplication: self];
}

- (void) applicationWillTerminate___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app
{
    // Do nothing here
}

- (void) setStatusBarHidden___boolean:(bool) flag
{
    [self setStatusBarHidden: flag];
}

- (void) setStatusBarOrientation___int: (int) orientation
{
	[self setStatusBarOrientation: orientation];
}

- (void) setIdleTimerDisabled___boolean: (bool) flag
{
    [self setIdleTimerDisabled: flag];
}

+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class :(XMLVMArray*) args :(java_lang_Class*) app
{
    // TODO: change args array to argc, argc
  	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSMutableString* className = [app getName__];
	NSMutableString* mangledName = [className stringByReplacingOccurrencesOfString: @"." withString: @"_"];
	[className release];
    UIApplicationMain(0 /*argc*/, nil /*argv*/, mangledName, mangledName);
	[pool release];				 
}

- (java_util_List *) getWindows__
{
	return [self.windows retain];
}

@end
