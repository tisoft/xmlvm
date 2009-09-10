
#import "xmlvm.h"
#import "java_lang_Throwable.h"
#import "java_lang_String.h"


// java.lang.Exception
//----------------------------------------------------------------------------
// For some reason, compiling for the device doesn't like to define this
// class as a category.
@interface java_lang_Exception : java_lang_Throwable

- (id) init;
- (void) __init_java_lang_Exception;
- (void) __init_java_lang_Exception___java_lang_String: (java_lang_String*) msg;
- (void) __init_java_lang_Exception___java_lang_String_java_lang_Throwable: (java_lang_String*) msg: (java_lang_Throwable*) cause;
- (java_lang_Exception *) initCause___java_lang_Throwable: (java_lang_Throwable*) cause;
- (void) printStackTrace;

@end
