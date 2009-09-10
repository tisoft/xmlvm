#import "xmlvm.h"

@class java_lang_Class;
@class java_lang_String;


typedef NSObject java_lang_Object;

@interface NSObject (cat_java_lang_Object) 
- (void) __init_java_lang_Object;
- (java_lang_Class*) getClass;
- (java_lang_String*) getName;
- (int) intValue;
- (int) equals___java_lang_Object: (java_lang_Object*) o;

@end
