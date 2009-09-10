
#import "java_lang_IllegalAccessException.h"

// java.lang.IllegalAccessException
//----------------------------------------------------------------------------
@implementation java_lang_IllegalAccessException

- (id) init
{
    return [self initWithName: @"java_lang_IllegalAccessException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_IllegalAccessException
{
    // Do nothing
}

- (void) __init_java_lang_IllegalAccessException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_IllegalAccessException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_IllegalAccessException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
