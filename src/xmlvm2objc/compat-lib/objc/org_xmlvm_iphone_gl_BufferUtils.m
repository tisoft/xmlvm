#import "org_xmlvm_iphone_gl_BufferUtils.h"


// org_xmlm_iphone_gl_BufferUtils
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_gl_BufferUtils

+ (java_nio_ByteBuffer*) createByteBuffer___int: (int) size
{
	java_nio_ByteBuffer* retval = [[java_nio_ByteBuffer alloc] init];
	[retval __init_java_nio_ByteBuffer___int: size];
	
	return retval;
}

+ (java_nio_IntBuffer*) createIntBuffer___int: (int) size
{
	java_nio_IntBuffer* retval = [[java_nio_IntBuffer alloc] init];
	[retval __init_java_nio_IntBuffer___int: size];
	
	return retval;
}

+ (java_nio_FloatBuffer*) createFloatBuffer___int: (int) size
{
	java_nio_FloatBuffer* retval = [[java_nio_FloatBuffer alloc] init];
	[retval __init_java_nio_FloatBuffer___int: size];
	
	return retval;
}

@end
