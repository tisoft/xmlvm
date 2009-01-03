#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGRect.h"


@interface org_xmlvm_iphone_CGRect : java_lang_Object {
@public org_xmlvm_iphone_CGPoint* origin;
@public org_xmlvm_iphone_CGSize* size;
}
- (id) init;
- (void) dealloc;
- (CGRect) getCGRect;
- (void) __init_org_xmlvm_iphone_CGRect___float_float_float_float :(float)x :(float)y :(float)w :(float)h;
- (void) __init_org_xmlvm_iphone_CGRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)other;
+ (org_xmlvm_iphone_CGRect*) Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect
       :(org_xmlvm_iphone_CGRect*)r1 :(org_xmlvm_iphone_CGRect*)r2;
+ (BOOL) IsNull___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)r;
@end