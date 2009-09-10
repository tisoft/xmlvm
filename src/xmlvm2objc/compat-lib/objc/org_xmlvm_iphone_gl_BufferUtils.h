#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_nio_ByteBuffer.h"
#import "java_nio_IntBuffer.h"
#import "java_nio_FloatBuffer.h"

// org_xmlvm_iphone_gl_BufferUtils
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_gl_BufferUtils : java_lang_Object {
}

+ (java_nio_ByteBuffer*) createByteBuffer___int: (int) size;
+ (java_nio_IntBuffer*) createIntBuffer___int: (int) size;
+ (java_nio_FloatBuffer*) createFloatBuffer___int: (int) size;


@end
