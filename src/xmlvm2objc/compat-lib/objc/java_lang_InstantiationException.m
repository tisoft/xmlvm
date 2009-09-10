
#import "java_lang_InstantiationException.h"

// java.lang.InstantiationException
//----------------------------------------------------------------------------
@implementation java_lang_InstantiationException

- (id) init
{
    return [self initWithName: @"java_lang_InstantiationException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_InstantiationException
{
    // Do nothing
}

- (void) __init_java_lang_InstantiationException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_InstantiationException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_InstantiationException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
