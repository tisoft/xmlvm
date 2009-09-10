#import "java_nio_ByteBuffer.h"


// java_nio_ByteBuffer
//----------------------------------------------------------------------------
@implementation java_nio_ByteBuffer


- (void) __init_java_nio_ByteBuffer___int: (int) size
{
	data = (unsigned char *) malloc(sizeof(unsigned char) * size);
	index = 0;
}

- (int) get___int: (int) value
{
	return data[value];
}

- (java_nio_ByteBuffer*) put___int_int: (int) pos: (int) value
{
	data[pos] = (unsigned char) value;
	[self retain];
	return self;
}

- (java_nio_ByteBuffer*) put___int: (int) value
{
	data[index] = (unsigned char) value;
	index++;
	[self retain];
	return self;
}

- (java_nio_ByteBuffer*) reset
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
