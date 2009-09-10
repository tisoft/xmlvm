
#import "java_lang_IllegalArgumentException.h"

// java.lang.IllegalArgumentException
//----------------------------------------------------------------------------
@implementation java_lang_IllegalArgumentException

- (id) init
{
    return [self initWithName: @"java_lang_IllegalArgumentException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_IllegalArgumentException
{
    // Do nothing
}

- (void) __init_java_lang_IllegalArgumentException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_IllegalArgumentException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_IllegalArgumentException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
