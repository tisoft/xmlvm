
/** @author teras */

#import "org_xmlvm_iphone_UINavigationBarDelegate.h"


@implementation org_xmlvm_iphone_UINavigationBarDelegate 

- (int) shouldPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem :(org_xmlvm_iphone_UINavigationBar*)bar :(org_xmlvm_iphone_UINavigationItem*)item {
	return [self navigationBar:bar shouldPushItem:item];
}

- (void) didPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem :(org_xmlvm_iphone_UINavigationBar*)bar :(org_xmlvm_iphone_UINavigationItem*)item {
	[self navigationBar:bar didPushItem:item];
}

- (int) shouldPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem :(org_xmlvm_iphone_UINavigationBar*)bar :(org_xmlvm_iphone_UINavigationItem*)item {
	return [self navigationBar:bar shouldPopItem:item];
}

- (void) didPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem :(org_xmlvm_iphone_UINavigationBar*)bar :(org_xmlvm_iphone_UINavigationItem*)item {
	[self navigationBar:bar didPopItem:item];
}


@end
