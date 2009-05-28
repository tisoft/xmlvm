#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_util_Iterator.h"


// java.util.List
//----------------------------------------------------------------------------
typedef NSArray java_util_List;
@interface NSArray (cat_java_util_List)

- (java_util_Iterator*) iterator;
- (int) size;
- (BOOL) add___java_lang_Object :(java_lang_Object*) item;
- (java_lang_Object*) get___int :(int) idx;
- (java_lang_Object*) remove___int :(int) idx;
- (BOOL) remove___java_lang_Object :(java_lang_Object*) item;

@end