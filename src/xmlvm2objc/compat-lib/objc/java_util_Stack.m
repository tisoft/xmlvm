#import "java_util_Stack.h"


// java.util.Stack
//----------------------------------------------------------------------------
@implementation NSMutableArray (cat_java_util_Stack)

- (void) __init_java_util_Stack
{
}

- (java_util_Iterator*) iterator
{
	return [[[java_util_Iterator alloc] init: [self objectEnumerator]] autorelease];
}

- (int) size
{
	return [self count];
}

- (java_lang_Object*) push___java_lang_Object :(java_lang_Object*) item
{
	[self addObject: item];
	return item;
}

- (java_lang_Object*) get___int :(int) idx
{
	return (java_lang_Object*) [self objectAtIndex: idx];
}

- (java_lang_Object*) remove___int :(int) idx
{
	java_lang_Object* o = [self objectAtIndex: idx];
	[self removeObjectAtIndex: idx];
	return o;
}

- (java_lang_Object*) pop
{
	java_lang_Object* o = [self lastObject];
	[self removeLastObject];
	return o;
}

- (BOOL) remove___java_lang_Object :(java_lang_Object*) item
{
	if ([self indexOfObject: item] != NSNotFound) {
		[self removeObject: item];
		return true;
	} else {
		return false;
	}
}

@end