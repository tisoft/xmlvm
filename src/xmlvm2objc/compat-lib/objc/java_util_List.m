#import "java_util_List.h"


// java.util.List
//----------------------------------------------------------------------------
@implementation NSArray (cat_java_util_List)

- (java_util_Iterator*) iterator
{
	return [[[java_util_Iterator alloc] init: [self objectEnumerator]] autorelease];
}

- (int) size
{
	return [self count];
}

- (BOOL) add___java_lang_Object :(java_lang_Object*) item
{
	[((NSMutableArray*) self) addObject: item];
	return TRUE;
}

- (java_lang_Object*) get___int :(int) idx
{
	return (java_lang_Object*) [self objectAtIndex: idx];
}

- (java_lang_Object*) remove___int :(int) idx
{
	java_lang_Object* o = [self objectAtIndex: idx];
	[((NSMutableArray*) self) removeObjectAtIndex: idx];
	return o;
}

@end