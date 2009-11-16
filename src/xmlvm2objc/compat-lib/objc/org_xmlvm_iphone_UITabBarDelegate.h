
/** @author teras */

#import "xmlvm.h"

#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UITabBarItem.h"
#import "org_xmlvm_iphone_UITabBar.h"


@interface org_xmlvm_iphone_UITabBarDelegate : java_lang_Object <UITabBarDelegate>

- (void) __init_org_xmlvm_iphone_UITabBarDelegate__;
- (void) willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList :(org_xmlvm_iphone_UITabBar*)n1 :(java_util_ArrayList*)n2;
- (void) didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList :(org_xmlvm_iphone_UITabBar*)n1 :(java_util_ArrayList*)n2;
- (void) willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean :(org_xmlvm_iphone_UITabBar*)n1 :(java_util_ArrayList*)n2 :(int)changed;
- (void) didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean :(org_xmlvm_iphone_UITabBar*)n1 :(java_util_ArrayList*)n2 :(int)changed;
- (void) didSelectItem___org_xmlvm_iphone_UITabBar_org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBar*)n1 :(org_xmlvm_iphone_UITabBarItem*)n2;

@end

