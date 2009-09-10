#import "xmlvm.h"
#import <Foundation/Foundation.h>
#import "java_lang_String.h"


// NSData
//----------------------------------------------------------------------------
typedef NSData org_xmlvm_iphone_NSData;
@interface NSData (cat_org_xmlvm_iphone_NSData)
+ (NSData*) dataWithContentsOfFile___java_lang_String: (java_lang_String*) path;
- (int) getByte___int: (int) index;
- (java_lang_String*) toString;
@end
