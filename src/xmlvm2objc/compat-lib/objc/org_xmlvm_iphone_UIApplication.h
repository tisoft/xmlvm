#import "xmlvm.h"
#import "org_xmlvm_iphone_NSNotification.h"

// UIApplication
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIApplication : UIApplication <UIApplicationDelegate>
- (void) __init_org_xmlvm_iphone_UIApplication;
+ (org_xmlvm_iphone_UIApplication*) getSharedApplication;
- (void) applicationDidFinishLaunching: (UIApplication*) app;
- (void) applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillTerminate: (UIApplication*) app;
- (void) applicationWillTerminate___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationDidBecomeActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationDidBecomeActive:(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillResignActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillResignActive:(org_xmlvm_iphone_UIApplication*) app;
- (void) setStatusBarHidden___boolean:(bool) flag;
- (void) setStatusBarOrientation___int: (int) orientation;
- (void) setIdleTimerDisabled___boolean: (bool) flag;
+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class :(NSMutableArray*) args :(java_lang_Class*) app;
@end