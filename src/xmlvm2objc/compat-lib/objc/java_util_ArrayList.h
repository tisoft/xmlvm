#import "xmlvm.h"
#import "java_util_Iterator.h"

// java.util.ArrayList
//----------------------------------------------------------------------------
typedef NSMutableArray java_util_ArrayList;
@interface NSMutableArray (cat_java_util_ArrayList)

- (void) __init_java_util_ArrayList;
- (java_util_Iterator*) iterator;
- (int) size;
- (BOOL) add___java_lang_Object :(java_lang_Object*) item;
- (java_lang_Object*) set___int_java_lang_Object :(java_lang_Object*) item;
- (java_lang_Object*) get___int :(int) idx;
- (java_lang_Object*) remove___int :(int) idx;
- (BOOL) remove___java_lang_Object :(java_lang_Object*) item;
- (int) indexOf___java_lang_Object :(java_lang_Object*) item;
- (int) contains___java_lang_Object :(java_lang_Object*) item;
- (void) clear;

@end
