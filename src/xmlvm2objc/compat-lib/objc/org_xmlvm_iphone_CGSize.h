#import "xmlvm.h"
#import "java_lang_Object.h"


// CGSize
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGSize : java_lang_Object {
@public float width;
@public float height;
}

- (void) _PUT_width: (float) w;
- (float) _GET_width;
- (void) _PUT_height: (float) h;
- (float) _GET_height;

@end