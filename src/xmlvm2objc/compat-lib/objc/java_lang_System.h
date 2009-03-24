#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_io_PrintStream.h"

@interface java_lang_System : java_lang_Object

+ (void) initialize;
+ (java_io_PrintStream*) _GET_STATIC_out;
+ (void) _PUT_STATIC_out: (java_io_PrintStream*) v;

@end