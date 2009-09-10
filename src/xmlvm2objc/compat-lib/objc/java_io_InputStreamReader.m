#import "java_io_InputStreamReader.h"

// java.io.InputStreamReader
//----------------------------------------------------------------------------
@implementation java_io_InputStreamReader;

- (int) read___char_ARRAYTYPE_int_int: (NSMutableArray *) buffer: (int) pos: (int) len {	
}

- (void) __init_java_io_InputStreamReader___java_io_InputStream: (java_io_InputStream*) input {
	target = (org_xmlvm_iphone_NSStringInputStream *) input;
}

- (void) __init_java_io_InputStreamReader___java_io_InputStream_java_lang_String: (java_io_InputStream*) input: (java_lang_String*) encoding {
	target = (org_xmlvm_iphone_NSStringInputStream *) input;
}

- (bool) ready {
	return [target ready];
}

- (java_lang_String*) readLine {
	return [target readLine];
}

- (void) close {
}

@end

