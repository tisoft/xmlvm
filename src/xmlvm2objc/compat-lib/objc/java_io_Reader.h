#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"

@interface java_io_Reader : java_lang_Object 

- (int) read___char_ARRAYTYPE_int_int: (NSMutableArray *) buffer: (int) pos: (int) len;
- (bool) ready;
- (java_lang_String*) readLine;
- (void) close;

@end
