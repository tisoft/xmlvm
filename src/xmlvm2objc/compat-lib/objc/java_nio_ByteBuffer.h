#import "xmlvm.h"
#import "java_lang_Object.h"

// java_nio_ByteBuffer
//----------------------------------------------------------------------------
@interface java_nio_ByteBuffer : java_lang_Object {
	@public unsigned char *data;
	@public int index;
}

- (void) __init_java_nio_ByteBuffer___int: (int) size;
- (java_nio_ByteBuffer*) put___int: (int) value;
- (java_nio_ByteBuffer*) put___int_int: (int) pos: (int) value;
- (int) get___int: (int) value;
- (java_nio_ByteBuffer*) reset;

@end
