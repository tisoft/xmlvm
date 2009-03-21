#import "xmlvm.h"
#import <Foundation/Foundation.h>
#import "java_lang_String.h"


// NSData
//----------------------------------------------------------------------------
typedef NSData org_xmlvm_iphone_NSData;
@interface NSData (cat_NSData)
- (java_lang_String*) toString;
@end
