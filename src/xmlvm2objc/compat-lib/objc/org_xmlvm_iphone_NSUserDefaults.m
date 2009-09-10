
#import "org_xmlvm_iphone_NSUserDefaults.h"


// NSUserDefaults
//----------------------------------------------------------------------------
@implementation NSUserDefaults (cat_org_xmlvm_iphone_NSUserDefaults)

- (java_lang_Object*) objectForKey___java_lang_String: (java_lang_String*) key
{
	[self synchronize];
	id obj = [self objectForKey: key];
	if (obj == nil)
	    return [NSNull null];
	[obj retain];
	return obj;
}

- (void) setObject___java_lang_Object_java_lang_String: (java_lang_Object*) value :(java_lang_String*) key
{
	[self setObject: value forKey: key];
	[self synchronize];
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

- (org_xmlvm_iphone_NSData*) dataForKey___java_lang_String :(java_lang_String*) key
{
	[self synchronize];
	org_xmlvm_iphone_NSData* data = [self dataForKey: key];
	[data retain];
	return data;
}

- (java_lang_String*) stringForKey___java_lang_String :(java_lang_String*) key
{	
	[self synchronize];
	java_lang_String* data = [self stringForKey: key];
	[data retain];
	return data;
}

@end
