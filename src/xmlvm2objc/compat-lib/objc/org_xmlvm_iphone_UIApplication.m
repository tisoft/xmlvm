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
#import "org_xmlvm_iphone_UIApplicationDelegate.h"


// UIApplication
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIApplication;

+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class_java_lang_Class :(XMLVMArray*) args :(java_lang_Class*) app :(java_lang_Class*) del
{
	// get names of UIApplication and UIApplicationDelegate
  	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSString* appNameProper = nil;
	NSString* delNameProper = nil;
	if (app!=JAVA_NULL) {
		NSString* appName = [app getName__];
		appNameProper = [appName stringByReplacingOccurrencesOfString: @"." withString: @"_"];
		[appName release];
	} else {
		appNameProper = @"org_xmlvm_iphone_UIApplication";
	}

	if (del!=JAVA_NULL) {
		NSString* delName = [del getName__];
		delNameProper = [delName stringByReplacingOccurrencesOfString: @"." withString: @"_"];
		[delName release];
	}
	// Use command line arguments
	char **argv = NULL;	
	int argc = 0;
	if (args != JAVA_NULL) {
		argc = [args count];
		if (argc != 0) {
			argv = malloc(argc*(sizeof(char*)));
			NSString * item;
			for (int i = 0; i < argc; i++) {
				item = [args objectAtIndex:i];
				if (item==nil || item==JAVA_NULL || item==NULL) {
					argv[i] = 0;
				} else {
					argv[i] = (char *)[item UTF8String];
				}
			}
		}
	}
    UIApplicationMain(argc, argv, appNameProper, delNameProper);
	free(argv);
	[pool drain];				 
}

+ (org_xmlvm_iphone_UIApplication*) sharedApplication__
{
	return_XMLVM_SELECTOR(UIApplication sharedApplication)
}

- (void) __init_org_xmlvm_iphone_UIApplication__
{
}

- (void) setDelegate___org_xmlvm_iphone_UIApplicationDelegate :(org_xmlvm_iphone_UIApplicationDelegate*) newdelegate
{
	[self setDelegate:newdelegate];
}

- (org_xmlvm_iphone_UIApplicationDelegate*) getDelegate__
{
	return_XMLVM(delegate)
}

- (void) setStatusBarHidden___boolean:(bool) flag
{
    [self setStatusBarHidden: flag];
}

- (void) setStatusBarOrientation___int: (int) orientation
{
	[self setStatusBarOrientation: orientation];
}

- (void) setStatusBarStyle___int: (int) style 
{
	[self setStatusBarStyle:style];
}

- (void) setStatusBarStyle___int_boolean: (int) style :(int) animated
{
	[self setStatusBarStyle:style animated:animated];
}

- (int) getStatusBarStyle__
{
	return [self statusBarStyle];
}

- (org_xmlvm_iphone_UIWindow*) getKeyWindow__
{
	return_XMLVM(keyWindow)
}

- (void) setIdleTimerDisabled___boolean: (bool) flag
{
    [self setIdleTimerDisabled: flag];
}

- (java_util_List *) getWindows__
{
	return_XMLVM(windows)
}

- (BOOL) openURL___org_xmlvm_iphone_NSURL:(org_xmlvm_iphone_NSURL*)url
{
	return [self openURL:url];
}

@end
