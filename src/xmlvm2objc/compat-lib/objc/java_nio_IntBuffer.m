#import "java_nio_IntBuffer.h"


// java_nio_IntBuffer
//----------------------------------------------------------------------------
@implementation java_nio_IntBuffer


+ (java_nio_IntBuffer*) allocate___int: (int) size
{
	java_nio_IntBuffer *buffer = [[java_nio_IntBuffer alloc] init];
	[buffer __init_java_nio_IntBuffer___int: size];
	
	return buffer;
}

- (void) __init_java_nio_IntBuffer___int: (int) size
{
	data = (int *) malloc(sizeof(int) * size);
	index = 0;
}

- (int) get___int: (int) value
{
	return data[value];
}

- (java_nio_IntBuffer*) put___int_int: (int) pos : (int) value
{
	data[pos] = value;
	[self retain];
	return self;
}

- (java_nio_IntBuffer*) put___int: (int) value
{
	data[index] = value;
	index++;
	[self retain];
	return self;
}

- (java_nio_IntBuffer*) reset
{
	index = 0;
	[self retain];
	return self;
}

- (void) dealloc {
	free(data);

    [super dealloc];
}

@end
