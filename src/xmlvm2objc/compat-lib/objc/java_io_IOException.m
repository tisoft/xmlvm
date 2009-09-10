
#import "java_io_IOException.h"

// java.io.IOException
//----------------------------------------------------------------------------
@implementation java_io_IOException

- (id) init
{
    return [self initWithName: @"java_io_IOException" reason: nil userInfo: nil];
}

- (void) __init_java_io_IOException
{
    // Do nothing
}

- (void) __init_java_io_IOException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_io_IOException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_io_IOException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
