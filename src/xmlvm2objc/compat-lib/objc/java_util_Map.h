#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_util_Set.h"
#import "java_util_Iterator.h"


// java.util.Map
//----------------------------------------------------------------------------
typedef NSDictionary java_util_Map;
@interface NSDictionary (cat_java_util_Map)

- (java_lang_Object*) put___java_lang_Object_java_lang_Object :(java_lang_Object*) key
                                                              :(java_lang_Object*) value;
- (java_lang_Object*) get___java_lang_Object :(java_lang_Object*) key;
- (java_util_Set*) keySet;

@end