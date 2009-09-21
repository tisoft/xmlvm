#import "java_util_Map.h"


// java.util.Map
//----------------------------------------------------------------------------
@implementation NSDictionary (cat_java_util_Map)

- (java_lang_Object*) put___java_lang_Object_java_lang_Object :(java_lang_Object*) key
                                                              :(java_lang_Object*) value
{
	id k = [key conformsToProtocol: @protocol(NSCopying)] ? key : [NSValue valueWithPointer: key];
	[((NSMutableDictionary*) self) setObject: value forKey: k];
	[value retain];
	return value;
}

- (java_lang_Object*) get___java_lang_Object :(java_lang_Object*) key
{
	id k = [key conformsToProtocol: @protocol(NSCopying)] ? key : [NSValue valueWithPointer: key];
	id value = [self objectForKey: k];
	if (value == nil)
		return [NSNull null];
	[value retain];
	return (java_lang_Object*) value;
}

- (java_util_Set*) keySet
{
	NSEnumerator* e = [[self allKeys] objectEnumerator];
	NSMutableArray* ma = [[NSMutableArray alloc] init];
	id v;
	
	while (v = [e nextObject]) {
		id k = [v isKindOfClass: [NSValue class]] ? [v pointerValue] : v;
		[ma addObject: k];
	}
	
	NSSet* keys = [NSSet setWithArray: ma];
	[keys retain];
	return keys;
}

@end