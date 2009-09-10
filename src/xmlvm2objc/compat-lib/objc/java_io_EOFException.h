
#import "xmlvm.h"
#import "java_lang_Exception.h"
#import "java_lang_String.h"


// java.io.EOFException
//----------------------------------------------------------------------------
// For some reason, compiling for the device doesn't like to define this
// class as a category.
@interface java_io_EOFException : java_lang_Exception

- (id) init;
- (void) __init_java_io_EOFException;
- (void) __init_java_io_EOFException___java_lang_String: (java_lang_String*) msg;
- (void) __init_java_io_EOFException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause;
- (java_io_EOFException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause;
- (void) printStackTrace;

@end
