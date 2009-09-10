#import "java_util_Map.h"


// java.util.Map
//----------------------------------------------------------------------------
@implementation NSDictionary (cat_java_util_Map)

- (java_lang_Object*) put___java_lang_Object_java_lang_Object :(java_lang_Object*) key
                                                              :(java_lang_Object*) value
{
	[((NSMutableDictionary*) self) setObject: value forKey: key];
	[value retain];
	return value;
}

- (java_lang_Object*) get___java_lang_Object :(java_lang_Object*) key
{
	id value = [self objectForKey: key];
	if (value == nil)
		return [NSNull null];
	[value retain];
	return (java_lang_Object*) value;
}

- (java_util_Set*) keySet
{
	NSArray* keyArray = [self allKeys];
	NSSet* keys = [NSSet setWithArray: keyArray];
	return keys;
}

@end