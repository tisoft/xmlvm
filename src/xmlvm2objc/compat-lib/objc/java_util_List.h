#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_util_Iterator.h"


// java.util.List
//----------------------------------------------------------------------------
typedef NSArray java_util_List;
@interface NSArray (cat_java_util_List)

- (java_util_Iterator*) iterator;
- (BOOL) add___java_lang_Object :(java_lang_Object*) item;
- (java_lang_Object*) remove___int :(int) idx;

@end