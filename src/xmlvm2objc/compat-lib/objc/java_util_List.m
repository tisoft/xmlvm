#import "java_util_List.h"


// java.util.List
//----------------------------------------------------------------------------
@implementation NSArray (cat_java_util_List)

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

- (void) add___int_java_lang_Object :(int) idx :(java_lang_Object*) item
{
    [((NSMutableArray*) self) insertObject :item atIndex :idx];
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
	return [((NSMutableArray*) self) indexOfObject: item];
}

- (int) contains___java_lang_Object :(java_lang_Object*) item
{
	return [self indexOf___java_lang_Object: item] != NSNotFound;
}

- (void) clear
{
	[self removeAllObjects];
}
@end
