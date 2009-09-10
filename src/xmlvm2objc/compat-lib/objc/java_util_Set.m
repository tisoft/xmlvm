#import "java_util_Set.h"


// java.util.Set
//----------------------------------------------------------------------------
@implementation NSSet (cat_java_util_Set)

- (java_util_Iterator*) iterator
{
	return [[java_util_Iterator alloc] init: [self objectEnumerator]];
}

@end