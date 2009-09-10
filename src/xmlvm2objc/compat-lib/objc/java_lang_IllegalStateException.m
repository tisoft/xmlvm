
#import "java_lang_IllegalStateException.h"

// java.lang.IllegalStateException
//----------------------------------------------------------------------------
@implementation java_lang_IllegalStateException

- (id) init
{
    return [self initWithName: @"java_lang_IllegalStateException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_IllegalStateException
{
    // Do nothing
}

- (void) __init_java_lang_IllegalStateException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_IllegalStateException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_IllegalStateException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
