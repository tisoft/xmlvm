#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"

// NSTimer
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_NSTimer : java_lang_Object {
@public NSTimer* timer;
}

- (void) __init_org_xmlvm_iphone_NSTimer___float_java_lang_Object_java_lang_String_java_lang_Object_boolean
             :(float) timerInterval
             :(java_lang_Object*) target
             :(java_lang_String*) method
             :(java_lang_Object*) userInfo
             :(int) repeats;
- (void) dealloc;
- (void) invalidate;

@end