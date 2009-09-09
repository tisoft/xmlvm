#import "xmlvm.h"
#import "java_lang_Object.h"
// CGPoint
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGPoint : java_lang_Object {
@public float x;
@public float y;
}

- (void) _PUT_x: (float) x_;
- (float) _GET_x;
- (void) _PUT_y: (float) y_;
- (float) _GET_y;

@end