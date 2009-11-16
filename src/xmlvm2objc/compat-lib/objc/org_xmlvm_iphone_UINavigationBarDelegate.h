
/** @author teras */

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_UINavigationItem.h"
#import "org_xmlvm_iphone_UINavigationBar.h"

@interface org_xmlvm_iphone_UINavigationBarDelegate : java_lang_Object <UINavigationBarDelegate>

- (int) shouldPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem :(org_xmlvm_iphone_UINavigationBar*)bar :(org_xmlvm_iphone_UINavigationItem*)item;
- (void) didPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem :(org_xmlvm_iphone_UINavigationBar*)bar :(org_xmlvm_iphone_UINavigationItem*)item;
- (int) shouldPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem :(org_xmlvm_iphone_UINavigationBar*)bar :(org_xmlvm_iphone_UINavigationItem*)item;
- (void) didPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem :(org_xmlvm_iphone_UINavigationBar*)bar :(org_xmlvm_iphone_UINavigationItem*)item;

@end

