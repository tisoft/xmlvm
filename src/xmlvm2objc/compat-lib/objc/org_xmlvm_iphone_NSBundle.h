#import "xmlvm.h"
#import <Foundation/Foundation.h>
#import "java_lang_String.h"



// NSBundle
//----------------------------------------------------------------------------
typedef NSBundle org_xmlvm_iphone_NSBundle;
@interface NSBundle (cat_NSBundle)
- (java_lang_String*) pathForResource___java_lang_String_java_lang_String: (java_lang_String*) resource
                                                                         : (java_lang_String*) type;
@end
