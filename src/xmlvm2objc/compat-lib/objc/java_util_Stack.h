#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_util_Iterator.h"


// java.util.Stack
//----------------------------------------------------------------------------
typedef NSMutableArray java_util_Stack;
@interface NSMutableArray (cat_java_util_Stack)

- (void) __init_java_util_Stack;
- (java_util_Iterator*) iterator;
- (int) size;
- (java_lang_Object*) push___java_lang_Object :(java_lang_Object*) item;
- (java_lang_Object*) get___int :(int) idx;
- (java_lang_Object*) pop;
- (java_lang_Object*) remove___int :(int) idx;
- (BOOL) remove___java_lang_Object :(java_lang_Object*) item;

@end