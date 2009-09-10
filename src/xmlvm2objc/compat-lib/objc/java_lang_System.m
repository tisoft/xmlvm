#import "java_lang_System.h"


// java.lang.System
//----------------------------------------------------------------------------
java_io_PrintStream* _STATIC_java_lang_System_out;

@implementation java_lang_System;


/*
 TODO - this currently broken as while it returns a consistently changing 
 value it doesn't return an accurate time according to the Java spec for this method.
 Problems lie in the long representation on the 32 bit target architecture.
 */
+ (long) currentTimeMillis
{
    double result = trunc(([NSDate timeIntervalSinceReferenceDate] - 268300000) * 1000);
	result -= 2168640000;
    return (int) result;
}

+ (void) initialize
{
    java_io_PrintStream* v = [[[java_io_PrintStream alloc] init] autorelease];
    [java_lang_System _PUT_out: v];
}

+ (java_io_PrintStream*) _GET_out
{
    return _STATIC_java_lang_System_out;
}

+ (void) _PUT_out: (java_io_PrintStream*) v
{
    [v retain];
    [_STATIC_java_lang_System_out release];
    _STATIC_java_lang_System_out = v;
}

@end
