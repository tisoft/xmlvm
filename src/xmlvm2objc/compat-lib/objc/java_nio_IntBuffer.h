#import "xmlvm.h"
#import "java_lang_Object.h"

// java_nio_IntBuffer
//----------------------------------------------------------------------------
@interface java_nio_IntBuffer : java_lang_Object {
	@public int *data;
	@public int index;
}

+ (java_nio_IntBuffer*) allocate___int: (int) size;
- (void) __init_java_nio_IntBuffer___int: (int) size;
- (java_nio_IntBuffer*) put___int: (int) value;
- (java_nio_IntBuffer*) put___int_int: (int) pos : (int) value;
- (int) get___int: (int) value;
- (java_nio_IntBuffer*) reset;

@end
