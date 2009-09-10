
#import "java_io_EOFException.h"

// java.io.EOFException
//----------------------------------------------------------------------------
@implementation java_io_EOFException

- (id) init
{
    return [self initWithName: @"java_io_EOFException" reason: nil userInfo: nil];
}

- (void) __init_java_io_EOFException
{
    // Do nothing
}

- (void) __init_java_io_EOFException___java_lang_String: (java_lang_String*) msg
{
}

- (void) __init_java_io_EOFException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause
{
}

- (java_io_EOFException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause
{
	[self retain];
	return self;
}

- (void) printStackTrace
{
}

@end
