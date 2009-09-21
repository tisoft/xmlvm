
#import "org_xmlvm_iphone_NSBundle.h"

// NSBundle
//----------------------------------------------------------------------------
@implementation NSBundle (cat_NSBundle)
+ (NSBundle*) getMainBundle
{
	return [[NSBundle mainBundle] retain];
}

- (java_lang_String*) pathForResource___java_lang_String_java_lang_String: (java_lang_String*) resource
                                                                         : (java_lang_String*) type
{
	return [[NSMutableString alloc] initWithString: [self pathForResource: resource ofType: type]];
}

@end

