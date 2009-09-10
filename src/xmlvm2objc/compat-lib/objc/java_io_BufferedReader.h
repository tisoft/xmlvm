#import "xmlvm.h"
#import "java_io_Reader.h"

@interface java_io_BufferedReader : java_io_Reader {
	java_io_Reader *target;
}

- (void) __init_java_io_BufferedReader___java_io_Reader: (java_io_Reader *) reader;
- (int) read___char_ARRAYTYPE_int_int: (NSMutableArray *) buffer: (int) pos: (int) len;
- (bool) ready;
- (java_lang_String*) readLine;
- (void) close;

@end
