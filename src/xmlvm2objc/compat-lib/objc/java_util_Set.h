#import "xmlvm.h"
#import "java_util_Iterator.h"


// java.util.Set
//----------------------------------------------------------------------------
typedef NSSet java_util_Set;
@interface NSSet (cat_java_util_Set)

- (java_util_Iterator*) iterator;

@end