
#import "java_lang_ClassNotFoundException.h"

// java.lang.ClassNotFoundException
//----------------------------------------------------------------------------
@implementation java_lang_ClassNotFoundException

- (id) init
{
    return [self initWithName: @"java_lang_ClassNotFoundException" reason: nil userInfo: nil];
}

- (void) __init_java_lang_ClassNotFoundException
{
    // Do nothing
}

- (void) __init_java_lang_ClassNotFoundException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_lang_ClassNotFoundException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_lang_ClassNotFoundException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
