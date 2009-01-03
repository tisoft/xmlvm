#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_CGRect.h"

// CGContext
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGContext : java_lang_Object {
@public CGContextRef context;
}
+ (org_xmlvm_iphone_CGContext*) UICurrentContext;
- (void) setFillColor___float_ARRAYTYPE: (NSMutableArray*) color;
- (void) fillRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
@end