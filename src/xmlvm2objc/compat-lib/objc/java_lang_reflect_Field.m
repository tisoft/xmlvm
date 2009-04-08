#import "java_lang_reflect_Field.h"
#import "java_lang_Class.h"


// java.lang.reflect.Field
//----------------------------------------------------------------------------
@implementation java_lang_reflect_Field;

- (id) initWithName: (java_lang_String*) n isStatic: (BOOL) flag
{
	[super init];
	self->name = n;
	self->isStatic = flag;
	return self;
}

- (void) __init_java_lang_reflect_Field
{
}

- (java_lang_String*) getName
{
	return self->name;
}

- (int) getInt___java_lang_Object: (java_lang_Object*) obj
{
	int val = 0;
	if (isStatic) {
		NSMutableString* mangledFieldName = [NSMutableString stringWithString: @"_GET_STATIC_"];
		[mangledFieldName appendString: name];
		SEL sel = NSSelectorFromString(mangledFieldName);
		val = (int) [((java_lang_Class*) obj)->clazz performSelector: sel];
	} else {
		// TODO non-static fields
	}
	return val;
}

@end
