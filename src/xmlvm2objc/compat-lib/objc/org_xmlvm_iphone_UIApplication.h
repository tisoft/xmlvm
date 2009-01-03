#import "xmlvm.h"
#import "org_xmlvm_iphone_NSNotification.h"

// UIApplication
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIApplication : UIApplication
- (void) __init_org_xmlvm_iphone_UIApplication;
- (void) applicationDidFinishLaunching: (id) app;
- (void) applicationDidFinishLaunching___org_xmlvm_iphone_NSNotification :(org_xmlvm_iphone_NSNotification*)n1;
- (void) setStatusBarModeAndDuration___int_int: (int) mode :(int) duration;
- (void) acceleratedInX:(float)xAxis Y:(float)yAxis Z:(float)zAxis;
- (void) OnAccelerate___float_float_float :(float)x :(float)y :(float)z;
+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class :(NSMutableArray*)n1 :(id)n2;
@end