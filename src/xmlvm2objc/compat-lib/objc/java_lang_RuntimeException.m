
#import "java_lang_RuntimeException.h"

// java.lang.RuntimeException
//----------------------------------------------------------------------------
@implementation java_lang_RuntimeException

- (id) init
{
    return [self initWithName: @"java_lang_RuntimeException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_RuntimeException
{
    // Do nothing
}

- (void) __init_java_lang_RuntimeException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_RuntimeException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_RuntimeException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
