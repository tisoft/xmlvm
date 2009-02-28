#import "org_xmlvm_iphone_UIApplication.h"




// UIApplication
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIApplication;

- (void) __init_org_xmlvm_iphone_UIApplication
{
}

- (void) applicationDidFinishLaunching: (id) app
{
    [self applicationDidFinishLaunching___org_xmlvm_iphone_NSNotification: nil /* TODO: should pass notification */];
}

- (void) applicationDidFinishLaunching___org_xmlvm_iphone_NSNotification :(org_xmlvm_iphone_NSNotification*)n1
{
    // Never called since overriden in application
}

- (void) setStatusBarHidden___boolean:(bool) flag
{
    [self setStatusBarHidden: flag];
}

- (void) OnAccelerate___float_float_float :(float)x :(float)y :(float)z
{
    // Nothing to do. Will be overloaded in derived class.
}

+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class :(NSMutableArray*)n1 :(id)n2
{
    // TODO: change args array to argc, argc
	UIApplicationMain(0, nil, nil, nil);
}
@end