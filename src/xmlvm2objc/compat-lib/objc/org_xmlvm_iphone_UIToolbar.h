
/** @author teras */

#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UIColor.h"

typedef UIToolbar org_xmlvm_iphone_UIToolbar;

@interface UIToolbar (cat_org_xmlvm_iphone_UIToolbar)

- (void) __init_org_xmlvm_iphone_UIToolbar__;
- (void) __init_org_xmlvm_iphone_UIToolbar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (int) getBarStyle__;
- (void) setBarStyle___int :(int)n1;
- (org_xmlvm_iphone_UIColor*) getTintColor__;
- (void) setTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)n1;
- (int) isTranslucent__;
- (void) setTranslucent___boolean :(int)n1;
- (java_util_ArrayList*) getItems__;
- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;

@end

