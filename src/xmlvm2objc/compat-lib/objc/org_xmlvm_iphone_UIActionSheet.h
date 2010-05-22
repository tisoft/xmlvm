#import "xmlvm.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UITabBar.h"
#import "org_xmlvm_iphone_UIToolbar.h"
#import "org_xmlvm_iphone_UIBarButtonItem.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "java_lang_String.h"

@class org_xmlvm_iphone_UIActionSheetDelegate;

typedef UIActionSheet org_xmlvm_iphone_UIActionSheet;
@interface UIActionSheet (cat_org_xmlvm_iphone_UIActionSheet)
+ (org_xmlvm_iphone_UIActionSheet*) init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_ARRAYTYPE :(java_lang_String*)title :(org_xmlvm_iphone_UIActionSheetDelegate*)delegate :(java_lang_String*)cancelButtonTitle :(java_lang_String*)destructiveButtonTitle :(XMLVMArray*)otherButtonTitles;
- (void) showFromTabBar___org_xmlvm_iphone_UITabBar :(org_xmlvm_iphone_UITabBar*)n1;
- (void) showFromToolbar___org_xmlvm_iphone_UIToolbar :(org_xmlvm_iphone_UIToolbar*)n1;
- (void) showInView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
//- (void) showFromBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)n1 :(int)n2;
//- (void) showFromRect___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView_boolean :(org_xmlvm_iphone_CGRect*)n1 :(org_xmlvm_iphone_UIView*)n2 :(int)n3;
- (void) dismissWithClickedButtonIndex___int_boolean :(int)n1 :(int)n2;
@end

