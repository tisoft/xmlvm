
#import "java_lang_NumberFormatException.h"

// java.lang.NumberFormatException
//----------------------------------------------------------------------------
@implementation java_lang_NumberFormatException

- (id) init
{
    return [self initWithName: @"java_lang_NumberFormatException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_NumberFormatException
{
    // Do nothing
}

- (void) __init_java_lang_NumberFormatException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_NumberFormatException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_NumberFormatException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
