#import "xmlvm.h"
#import "java_lang_Object.h"

// CGAffineTransform
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGAffineTransform : java_lang_Object {
@public CGAffineTransform transform;
}
+ (org_xmlvm_iphone_CGAffineTransform*) makeRotation___float: (float) alpha;
- (void) translate___float_float :(float) tx :(float) ty;
@end