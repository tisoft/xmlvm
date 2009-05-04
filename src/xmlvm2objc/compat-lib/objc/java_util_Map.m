#import "java_util_Map.h"


// java.util.Map
//----------------------------------------------------------------------------
@implementation NSDictionary (cat_java_util_Map)

- (java_lang_Object*) put___java_lang_Object_java_lang_Object :(java_lang_Object*) key
                                                              :(java_lang_Object*) value
{
	[((NSMutableDictionary*) self) setObject: value forKey: key];
	return value;
}

- (java_lang_Object*) get___java_lang_Object :(java_lang_Object*) key
{
	id value = [self objectForKey: key];
	if (value == nil)
		return [java_lang_null _GET_NULL];
	return (java_lang_Object*) value;
}

@end