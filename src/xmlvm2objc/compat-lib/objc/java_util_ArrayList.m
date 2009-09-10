#import "java_util_ArrayList.h"


// java.util.ArrayList
//----------------------------------------------------------------------------
@implementation NSMutableArray (cat_java_util_ArrayList)

- (void) __init_java_util_ArrayList
{
}

- (void) clear
{
	[self removeAllObjects];
}


- (java_util_Iterator*) iterator
{
	return [[java_util_Iterator alloc] init: [self objectEnumerator]];
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

- (java_lang_Object*) set___int_java_lang_Object :(int) idx: (java_lang_Object*) item
{
	java_lang_Object* removed = [self get___int: idx];
	[((NSMutableArray*) self) replaceObjectAtIndex: idx withObject: item];

	return removed;
}

- (java_lang_Object*) get___int :(int) idx
{
	java_lang_Object* item = (java_lang_Object*) [self objectAtIndex: idx];
	[item retain];
	return item;
}

- (java_lang_Object*) remove___int :(int) idx
{
	java_lang_Object* o = [self objectAtIndex: idx];
	[o retain];
	[((NSMutableArray*) self) removeObjectAtIndex: idx];
	return o;
}

- (BOOL) remove___java_lang_Object :(java_lang_Object*) item
{
	if ([((NSMutableArray*) self) indexOfObject: item] != NSNotFound) {
		[((NSMutableArray*) self) removeObject: item];
		return true;
	} else {
		return false;
	}
}

- (int) indexOf___java_lang_Object :(java_lang_Object*) item
{
	int index = [((NSMutableArray*) self) indexOfObject: item];
	if (index == NSNotFound) 
	{
		return -1;
	}

	return index;
}

- (int) contains__java_lang_Object :(java_lang_Object*) item
{
	return [self indexOf___java_lang_Object: item] != NSNotFound;
}

@end
