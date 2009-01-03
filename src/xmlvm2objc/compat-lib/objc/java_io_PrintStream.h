#import "xmlvm.h"
#import "java_lang_Object.h"


@interface java_io_PrintStream : java_lang_Object 

- (void) println___int: (int) i;
- (void) println___float: (float) f;
- (void) println___double: (double) d;
- (void) println___java_lang_String: (NSString*) s;

@end

java_io_PrintStream* _STATIC_java_lang_System_out;