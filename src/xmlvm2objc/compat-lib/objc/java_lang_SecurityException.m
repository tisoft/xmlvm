
#import "java_lang_SecurityException.h"

// java.lang.SecurityException
//----------------------------------------------------------------------------
@implementation java_lang_SecurityException

- (id) init
{
    return [self initWithName: @"java_lang_SecurityException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_SecurityException
{
    // Do nothing
}

- (void) __init_java_lang_SecurityException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_SecurityException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_SecurityException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
