#import "java_lang_System.h"


// java.lang.System
//----------------------------------------------------------------------------
java_io_PrintStream* _STATIC_java_lang_System_out;

@implementation java_lang_System;

+ (void) initialize
{
    java_io_PrintStream* v = [[[java_io_PrintStream alloc] init] autorelease];
    [java_lang_System _PUT_STATIC_java_lang_System_out: v];
}

+ (java_io_PrintStream*) _GET_STATIC_java_lang_System_out
{
    return _STATIC_java_lang_System_out;
}

+ (void) _PUT_STATIC_java_lang_System_out: (java_io_PrintStream*) v
{
    [v retain];
    [_STATIC_java_lang_System_out release];
    _STATIC_java_lang_System_out = v;
}

@end