
/** @author teras */

#import "xmlvm.h"

#import "org_xmlvm_iphone_UIBarItem.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UIImage.h"
#import "java_util_Set.h"
#import "java_lang_Object.h"
//#import "org_xmlvm_iphone_UIBarButtonItemDelegate.h"
@class org_xmlvm_iphone_UIBarButtonItemDelegate;

typedef UIBarButtonItem org_xmlvm_iphone_UIBarButtonItem;

@interface UIBarButtonItem (cat_org_xmlvm_iphone_UIBarButtonItem)

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___int_java_lang_Object_java_lang_String :(int)n1 :(java_lang_Object*)n2 :(java_lang_String*)n3;
- (void) __init_org_xmlvm_iphone_UIBarButtonItem___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (void) __init_org_xmlvm_iphone_UIBarButtonItem___org_xmlvm_iphone_UIImage_int_java_lang_Object_java_lang_String :(org_xmlvm_iphone_UIImage*)n1 :(int)n2 :(java_lang_Object*)n3 :(java_lang_String*)n4;
- (void) __init_org_xmlvm_iphone_UIBarButtonItem___java_lang_String_int_org_xmlvm_iphone_UIBarButtonItemDelegate :(java_lang_String*)n1 :(int)n2 :(org_xmlvm_iphone_UIBarButtonItemDelegate*)n3;
- (void) setTitle___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_UIView*) getCustomView__;
- (void) setCustomView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (java_util_Set*) getPossibleTitles__;
- (void) setPossibleTitles___java_util_Set :(java_util_Set*)n1;
- (int) getStyle__;
- (void) setStyle___int :(int)n1;
- (java_lang_Object*) getTarget__;
- (void) setTarget___java_lang_Object :(java_lang_Object*)n1;
- (float) getWidth__;
- (void) setWidth___float :(float)n1;

@end

