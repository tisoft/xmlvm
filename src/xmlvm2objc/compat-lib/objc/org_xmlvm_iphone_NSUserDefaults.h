
#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_NSData.h"

// NSUserDefaults
//----------------------------------------------------------------------------
typedef NSUserDefaults org_xmlvm_iphone_NSUserDefaults;
@interface NSUserDefaults (cat_org_xmlvm_iphone_NSUserDefaults)
- (java_lang_Object*) objectForKey___java_lang_String: (java_lang_String*) key;
- (void) setObject___java_lang_Object_java_lang_String: (java_lang_Object*) value :(java_lang_String*) key;
- (void) setInteger___int_java_lang_String :(int) value :(java_lang_String*) key;
- (int) integerForKey___java_lang_String :(java_lang_String*) key;
- (void) setBool___boolean_java_lang_String :(int) value :(java_lang_String*) key;
- (int) boolForKey___java_lang_String :(java_lang_String*) key;
- (void) setFloat___float_java_lang_String :(float) value :(java_lang_String*) key;
- (float) floatForKey___java_lang_String :(java_lang_String*) key;

- (org_xmlvm_iphone_NSData*) dataForKey___java_lang_String :(java_lang_String*) key;
- (java_lang_String*) stringForKey___java_lang_String :(java_lang_String*) key;
@end
