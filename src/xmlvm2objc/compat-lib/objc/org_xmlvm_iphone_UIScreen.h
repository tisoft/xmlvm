#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_CGRect.h"

// UIScreen
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIScreen : java_lang_Object
+ (org_xmlvm_iphone_CGRect*) fullScreenApplicationContentRect;
+ (void) _setStatusBarHeight___float: (float) height;
@end