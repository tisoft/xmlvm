#import "xmlvm.h"
#import "java_util_Iterator.h"


// java.util.List
//----------------------------------------------------------------------------
typedef NSArray java_util_List;
@interface NSArray (cat_java_util_List)

- (java_util_Iterator*) iterator;

@end