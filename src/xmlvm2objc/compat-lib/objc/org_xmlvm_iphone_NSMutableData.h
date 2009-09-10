#import "xmlvm.h"
#import <Foundation/Foundation.h>
#import "java_lang_String.h"


// NSData
//----------------------------------------------------------------------------
typedef NSMutableData org_xmlvm_iphone_NSMutableData;
@interface NSMutableData (cat_org_xmlvm_iphone_NSMutableData)
- (void) __init_org_xmlvm_iphone_NSMutableData;
- (int) getByte___int: (int) index;
- (void) appendByte___int: (int) value;
- (int) byteCount;
- (java_lang_String*) toString;
@end
