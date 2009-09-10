#import "java_lang_Object.h"
#import "java_lang_Class.h"
#import "java_lang_String.h"

// java.lang.Object
//----------------------------------------------------------------------------
@implementation NSObject (cat_java_lang_Object)

- (java_lang_String*) getName
{
	return [[self getClass] getName];
}

- (void) __init_java_lang_Object
{
}

- (java_lang_Class*) getClass
{
	java_lang_Class* wrapperClass = [[java_lang_Class alloc] init];
	wrapperClass->clazz = [self class];
	return wrapperClass;
}

- (int) intValue
{
	return 0;
}

- (int) equals___java_lang_Object: (java_lang_Object*) o
{
	return self == o;
}

@end
