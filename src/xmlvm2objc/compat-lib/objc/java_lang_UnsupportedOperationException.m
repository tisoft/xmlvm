
#import "java_lang_UnsupportedOperationException.h"

// java.lang.UnsupportedOperationException
//----------------------------------------------------------------------------
@implementation java_lang_UnsupportedOperationException

- (id) init
{
    return [self initWithName: @"java_lang_UnsupportedOperationException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_UnsupportedOperationException
{
    // Do nothing
}

- (void) __init_java_lang_UnsupportedOperationException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_UnsupportedOperationException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_UnsupportedOperationException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
