#import "java_util_List.h"


// java.util.List
//----------------------------------------------------------------------------
@implementation NSArray (cat_java_util_List)

- (java_util_Iterator*) iterator
{
	return [[[java_util_Iterator alloc] init: [self objectEnumerator]] autorelease];
}

@end