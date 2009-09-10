#import "xmlvm.h"
#import "java_io_Reader.h"
#import "org_xmlvm_iphone_NSStringInputStream.h"
#import "java_io_InputStream.h"

@interface java_io_InputStreamReader : java_io_Reader {
	org_xmlvm_iphone_NSStringInputStream *target;
}

- (void) __init_java_io_InputStreamReader___java_io_InputStream: (java_io_InputStream *) input;
- (void) __init_java_io_InputStreamReader___java_io_InputStream_java_lang_String: (java_io_InputStream*) input: (java_lang_String*) encoding;

- (int) read___char_ARRAYTYPE_int_int: (NSMutableArray *) buffer: (int) pos: (int) len;
- (bool) ready;
- (java_lang_String*) readLine;
- (void) close;

@end
