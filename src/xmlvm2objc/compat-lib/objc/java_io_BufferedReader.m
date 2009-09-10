#import "java_io_BufferedReader.h"

// java.io.BufferedReader
//----------------------------------------------------------------------------
@implementation java_io_BufferedReader

- (void) __init_java_io_BufferedReader___java_io_Reader: (java_io_Reader*) reader {
	target = reader;
}

- (int) read___char_ARRAYTYPE_int_int: (NSMutableArray *) buffer: (int) pos: (int) len {
	return [target read___char_ARRAYTYPE_int_int: buffer: pos: len];
}

- (bool) ready {
	return [target ready];
}

- (java_lang_String*) readLine {
	return [target readLine];
}

- (void) close {
	[target close];
}

@end

