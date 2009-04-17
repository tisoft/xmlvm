
#import "org_xmlvm_iphone_NSUserDefaults.h"


// NSUserDefaults
//----------------------------------------------------------------------------
@implementation NSUserDefaults (cat_org_xmlvm_iphone_NSUserDefaults)

- (java_lang_Object*) objectForKey___java_lang_String: (java_lang_String*) key
{
	return [self objectForKey: key];
}

- (void) setInteger___int_java_lang_String :(int) value :(java_lang_String*) key
{
	[self setInteger: value forKey: key];
}

- (int) integerForKey___java_lang_String :(java_lang_String*) key
{
	return [self integerForKey: key];
}

- (void) setBool___boolean_java_lang_String :(int) value :(java_lang_String*) key
{
	[self setBool: (value ? TRUE : FALSE) forKey: key];
}

- (int) boolForKey___java_lang_String :(java_lang_String*) key
{
	return [self boolForKey: key] ? 1 : 0;
}

- (void) setFloat___float_java_lang_String :(float) value :(java_lang_String*) key
{
	[self setFloat: value forKey: key];
}

- (float) floatForKey___java_lang_String :(java_lang_String*) key
{
	return [self floatForKey: key];
}

@end
