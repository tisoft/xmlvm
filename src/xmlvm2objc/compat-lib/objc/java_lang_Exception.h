
#import "xmlvm.h"
#import "java_lang_Throwable.h"


// java.lang.Exception
//----------------------------------------------------------------------------
// For some reason, compiling for the device doesn't like to define this
// class as a category.
@interface java_lang_Exception : java_lang_Throwable

- (id) init;
- (void) __init_java_lang_Exception;

@end
