#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_CGRect.h"

// UIScreen
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIScreen : java_lang_Object {
@private UIScreen* screen;
}
+ (org_xmlvm_iphone_UIScreen*) mainScreen;
- (org_xmlvm_iphone_CGRect*) bounds;
- (org_xmlvm_iphone_CGRect*) applicationFrame;
@end