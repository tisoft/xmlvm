#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"


// java.lang.reflect.Field
//----------------------------------------------------------------------------
@interface java_lang_reflect_Field : java_lang_Object {

	java_lang_String* name;
	BOOL              isStatic;
}

- (id) initWithName: (java_lang_String*) name isStatic: (BOOL) flag;
- (void) dealloc;
- (void) __init_java_lang_reflect_Field;
- (java_lang_String*) getName;
- (int) getInt___java_lang_Object: (java_lang_Object*) obj;

@end