#import "java_lang_Boolean.h"


// java.lang.Boolean
//----------------------------------------------------------------------------
@implementation java_lang_Boolean

- (id) init
{
	[super init];
	value = 0;
	return self;
}

- (NSUInteger) hash
{
	return value;
}

- (void) __init_java_lang_Boolean___boolean :(BOOL) b
{
	value = (int) b;
}

- (void) __init_java_lang_Boolean___int :(int) i
{
	value = i;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Boolean class]] && ((java_lang_Boolean*) anObject)-> value == value;
}

- (int) booleanValue
{
	return value;
}

@end
