
#import "xmlvm.h"
#import "java_lang_Exception.h"
#import "java_lang_String.h"


// java.lang.IllegalAccessException
//----------------------------------------------------------------------------
// For some reason, compiling for the device doesn't like to define this
// class as a category.
@interface java_lang_IllegalAccessException : java_lang_Exception

- (id) init;
- (void) __init_java_lang_IllegalAccessException;
- (void) __init_java_lang_IllegalAccessException___java_lang_String: (java_lang_String*) msg;
- (void) __init_java_lang_IllegalAccessException___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause;
- (java_lang_IllegalAccessException *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause;
- (void) printStackTrace;

@end
