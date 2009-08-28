#import "xmlvm.h"
#import <Foundation/Foundation.h>
#import "java_lang_String.h"



// NSString
//----------------------------------------------------------------------------
typedef NSString org_xmlvm_iphone_NSString;
@interface NSString (cat_NSString)
+ (java_lang_String*) stringWithContentsOfFile___java_lang_String: (java_lang_String*) path;
@end
