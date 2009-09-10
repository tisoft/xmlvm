#import "java_nio_FloatBuffer.h"


// java_nio_FloatBuffer
//----------------------------------------------------------------------------
@implementation java_nio_FloatBuffer


- (void) __init_java_nio_FloatBuffer___int: (int) size
{
	data = (float *) malloc(sizeof(float) * size);
	index = 0;
}

- (float) get___float: (int) value
{
	return data[value];
}

- (java_nio_FloatBuffer*) put___float: (float) value
{
	data[index] = value;
	index++;
	[self retain];
	return self;
}

- (java_nio_FloatBuffer*) reset
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
