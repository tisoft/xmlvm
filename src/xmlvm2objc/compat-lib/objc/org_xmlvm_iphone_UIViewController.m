
/** @author teras */

#import "org_xmlvm_iphone_UIViewController.h"
#import "org_xmlvm_iphone_UINavigationController.h"


@implementation UIViewController (cat_org_xmlvm_iphone_UIViewController);

- (void) __init_org_xmlvm_iphone_UIViewController__ {
	//[self init];
}

- (void) loadView {
	[self loadView__];
}
- (void) loadView__ {
	UIView * v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
	self.view = v;
	[v release];
}

- (int) isViewLoaded__ {
	return [self isViewLoaded];
}

- (void) viewDidLoad {
	[self viewDidLoad__];
}
- (void) viewDidLoad__ {
}

- (void) viewDidUnload {
	[self viewDidUnload__];
}
- (void) viewDidUnload__ {
}

- (org_xmlvm_iphone_UIView*) rotatingHeaderView__ {
	return [self.rotatingHeaderView retain];
}

- (org_xmlvm_iphone_UIView*) rotatingFooterView__ {
	return [self.rotatingFooterView retain];
}

- (void) didReceiveMemoryWarning {
	[self didReceiveMemoryWarning__];
}
- (void) didReceiveMemoryWarning__ {
}

- (int) wantsFullScreenLayout {
	return [self wantsFullScreenLayout__];
}
- (int) wantsFullScreenLayout__ {
	return NO;
}

- (int) getInterfaceOrientation__ {
	return self.interfaceOrientation;
}

- (int) isEditing__ {
	return self.editing;
}

- (int) hidesBottomBarWhenPushed__ {
	return self.hidesBottomBarWhenPushed;
}

- (org_xmlvm_iphone_UITabBarController*) getTabBarController__ {
	return [self.tabBarController retain];
}

- (org_xmlvm_iphone_UITabBarItem*) getTabBarItem__ {
	return [self.tabBarItem retain];
}

- (void) setTabBarItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)n1 {
	self.tabBarItem = n1;
}



- (void) viewWillAppear:(BOOL)anim {
	[self viewWillAppear___boolean:anim];
}
- (void) viewWillAppear___boolean :(int)anim {
}

- (void) viewWillDisappear:(BOOL)anim {
	[self viewWillDisappear___boolean:anim];
}
- (void) viewWillDisappear___boolean :(int)anim {
}

- (void) viewDidAppear:(BOOL)anim {
	[self viewDidAppear___boolean:anim];
}
- (void) viewDidAppear___boolean :(int)anim{
}

- (void) viewDidDisappear:(BOOL)anim {
	[self viewDidDisappear___boolean:anim];
}
- (void) viewDidDisappear___boolean :(int)anim{
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation {
	return [self shouldAutorotateToInterfaceOrientation___int:orientation];
}
- (int) shouldAutorotateToInterfaceOrientation___int :(int)orientation {
	return NO;
}

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(NSTimeInterval)n2 {
	[self willRotateToInterfaceOrientation___int_double:orientation :n2];
}
- (void) willRotateToInterfaceOrientation___int_double :(int)orientation :(double)n2 {
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(NSTimeInterval)n2 {
	[self willAnimateRotationToInterfaceOrientation___int_double:orientation :n2];
}
- (void) willAnimateRotationToInterfaceOrientation___int_double :(int)orientation :(double)n2 {
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)orientation {
	[self didRotateFromInterfaceOrientation___int:orientation];
}
- (void) didRotateFromInterfaceOrientation___int :(int)orientation {
}

- (void) willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(NSTimeInterval)n2 {
	[self willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double:orientation :n2];
}
- (void) willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double :(int)orientation :(double)n2 {
}

- (void) didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)orientation {
	[self didAnimateFirstHalfOfRotationToInterfaceOrientation___int:orientation];
}
- (void) didAnimateFirstHalfOfRotationToInterfaceOrientation___int :(int)orientation {
}

- (void) willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(double)n2 {
	[self willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double:orientation :n2];
}
- (void) willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double :(int)orientation :(double)n2 {
}

- (org_xmlvm_iphone_UIView*) getView__ {
	return [self.view retain];
}

- (void) setView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1 {
	[self setView:n1];
}

- (java_lang_String*) getTitle__ {
	return [self.title retain];
}

- (void) setTitle___java_lang_String :(java_lang_String*)n1 {
	[self setTitle:n1];
}

- (void) setWantsFullScreenLayout___boolean :(int)n1 {
	[self setWantsFullScreenLayout:n1];
}

- (org_xmlvm_iphone_UINavigationController*) getNavigationController__ {
	// TODO teras: why there's a warning here?
	return [self.navigationController retain]; 
}

- (void) setEditing___boolean :(int)n1 {
	self.editing = n1;
}

- (void) setEditing___boolean_boolean :(int)n1 :(int)n2 {
	[self setEditing:n1 animated:n2];
}

- (void) setHidesBottomBarWhenPushed___boolean :(int)n1 {
	[self setHidesBottomBarWhenPushed:n1];
}

- (java_util_ArrayList*) getToolbarItems__ {
	return [self.toolbarItems retain];
}

- (void) setToolbarItems___java_util_ArrayList :(java_util_ArrayList*)n1 {
	self.toolbarItems = n1;
}

- (void) setToolbarItems___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)animated {
	[self setToolbarItems:n1 animated:animated];
}



@end

