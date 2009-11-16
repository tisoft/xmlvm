
/** @author teras */

#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UITabBarItem.h"
@class org_xmlvm_iphone_UITabBarDelegate;

typedef UITabBar org_xmlvm_iphone_UITabBar;

@interface UITabBar (cat_org_xmlvm_iphone_UITabBar)

- (void) __init_org_xmlvm_iphone_UITabBar__;
- (void) __init_org_xmlvm_iphone_UITabBar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (org_xmlvm_iphone_UITabBarDelegate*) getTabBarDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UITabBarDelegate :(org_xmlvm_iphone_UITabBarDelegate*)n1;
- (java_util_ArrayList*) getItems__;
- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;
- (org_xmlvm_iphone_UITabBarItem*) getSelectedItem__;
- (void) setSelectedItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)n1;
- (void) beginCustomizingItems___java_util_ArrayList :(java_util_ArrayList*)n1;
- (int) endCustomizingAnimated___boolean :(int)n1;
- (int) isCustomizing__;

@end

