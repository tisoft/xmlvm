
#import "java_lang_IndexOutOfBoundsException.h"

// java.lang.IndexOutOfBoundsException
//----------------------------------------------------------------------------
@implementation java_lang_IndexOutOfBoundsException

- (id) init
{
    return [self initWithName: @"java_lang_IndexOutOfBoundsException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_IndexOutOfBoundsException
{
    // Do nothing
}

- (void) __init_java_lang_IndexOutOfBoundsException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_IndexOutOfBoundsException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_IndexOutOfBoundsException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
