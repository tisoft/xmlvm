#import "java_lang_Object.h"
#import "java_util_Map_Entry.h"

@interface java_util_Map_Entry_Impl : java_lang_Object <java_util_Map_Entry> {
	java_lang_Object* myKey;
	java_lang_Object* myValue;
}

- (id) initWithKey:(java_lang_Object*)key andValue:(java_lang_Object*)value;
- (java_lang_Object*) getKey__;
- (java_lang_Object*) getValue__;

@end
