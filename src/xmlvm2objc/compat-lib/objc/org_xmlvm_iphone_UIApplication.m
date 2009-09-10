#import "org_xmlvm_iphone_UIApplication.h"




// UIApplication
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIApplication;

- (void) __init_org_xmlvm_iphone_UIApplication
{
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

+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class :(NSMutableArray*)n1 :(id)n2
{
    // TODO: change args array to argc, argc
	UIApplicationMain(0, nil, nil, nil);
}

@end
