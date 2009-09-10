#import "xmlvm.h"
#import "java_lang_Object.h"

// java_nio_FloatBuffer
//----------------------------------------------------------------------------
@interface java_nio_FloatBuffer : java_lang_Object {
	@public float *data;
	@public int index;
}

- (void) __init_java_nio_FloatBuffer___int: (int) size;
- (java_nio_FloatBuffer*) put___float: (float) value;
- (float) get___float: (int) value;
- (java_nio_FloatBuffer*) reset;

@end
