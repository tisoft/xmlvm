#import "org_xmlvm_iphone_NSTimer.h"


// NSTimer
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSTimer;
- (void) __init_org_xmlvm_iphone_NSTimer___float_java_lang_Object_java_lang_String_java_lang_Object_boolean
             :(float) timerInterval
             :(java_lang_Object*) t
             :(java_lang_String*) method
             :(java_lang_Object*) userInfo
             :(int) r
{
    NSMutableString* sel = [NSMutableString stringWithString: (NSString*) method];
    [sel appendString: @"___org_xmlvm_iphone_NSTimer:"];
    [NSTimer scheduledTimerWithTimeInterval:timerInterval
             target:t
             selector:NSSelectorFromString(sel)
             userInfo:userInfo
             repeats:r ];
}

@end
