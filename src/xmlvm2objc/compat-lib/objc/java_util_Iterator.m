#import "java_util_Iterator.h"



// java.util.Iterator
//----------------------------------------------------------------------------
@implementation java_util_Iterator

- (id) init :(NSEnumerator*) e
{
	[super init];
	self->enumerator = e;
	self->nextObj = [e nextObject];
	return self;
}
	

- (bool) hasNext
{
	return self->nextObj != nil;
}

- (java_lang_Object*) next
{
	id next = self->nextObj;
	self->nextObj = [enumerator nextObject];
	return (java_lang_Object*) next;
}

@end