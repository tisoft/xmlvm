
/** @author teras */

#import "xmlvm.h"
#import "java_lang_Object.h"

#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIBarButtonItem.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UINavigationBar.h"

typedef UINavigationItem org_xmlvm_iphone_UINavigationItem;

@interface UINavigationItem (cat_org_xmlvm_iphone_UINavigationItem)

- (void) __init_org_xmlvm_iphone_UINavigationItem___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_UIBarButtonItem*) getBackBarButtonItem__;
- (void) setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1;
- (int) hidesBackButton__;
- (void) setHidesBackButton___boolean :(int)n1;
- (void) setHidesBackButton___boolean_boolean :(int)n1 :(int)n2;
- (org_xmlvm_iphone_UIBarButtonItem*) getLeftBarButtonItem__;
- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1;
- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)n1 :(int)n2;
- (java_lang_String*) getPrompt__;
- (void) setPrompt___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_UIBarButtonItem*) getRightBarButtonItem__;
- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1;
- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)n1 :(int)n2;
- (java_lang_String*) getTitle__;
- (void) setTitle___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_UIView*) getTitleView__;
- (void) setTitleView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;

@end

