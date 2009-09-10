
#import "java_lang_Exception.h"

// java.lang.Exception
//----------------------------------------------------------------------------
@implementation java_lang_Exception

- (id) init
{
    return [self initWithName: @"java_lang_Exception" reason: nil userInfo: nil];
}

- (void) __init_java_lang_Exception
{
    // Do nothing
}

- (void) __init_java_lang_Exception___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_Exception___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_Exception *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	return self;
}

- (void) printStackTrace
{
}

@end
