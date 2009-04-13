
#include "xmlvm.h"

// java.lang.Throwable
//----------------------------------------------------------------------------
// For some reason, compiling for the device doesn't like to define this
// class as a category.
@interface java_lang_Throwable : NSException

- (id) init;
- (void) __init_java_lang_Throwable;

@end
