#import "java_lang_Object.h"
#import "java_lang_Class.h"


// java.lang.Object
//----------------------------------------------------------------------------
@implementation NSObject (cat_java_lang_Object)

- (void) __init_java_lang_Object
{
}

- (java_lang_Class*) getClass
{
	java_lang_Class* wrapperClass = [[[java_lang_Class alloc] init] autorelease];
	wrapperClass->clazz = [self class];
	return wrapperClass;
}

@end