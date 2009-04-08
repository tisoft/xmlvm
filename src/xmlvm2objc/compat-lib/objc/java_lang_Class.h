#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"



// java.lang.Class
//----------------------------------------------------------------------------
@interface java_lang_Class : java_lang_Object {

@public Class clazz;

}

- (void) __init_java_lang_Class;
- (java_lang_String*) getName;
+ (java_lang_Class*) forName___java_lang_String :(java_lang_String*) className;
- (NSMutableArray*) getDeclaredFields;

@end