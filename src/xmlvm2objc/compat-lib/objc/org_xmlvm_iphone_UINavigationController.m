
/** @author teras */

#import "org_xmlvm_iphone_UINavigationController.h"
#import "org_xmlvm_iphone_UINavigationControllerDelegate.h"


@implementation UINavigationController (cat_org_xmlvm_iphone_UINavigationController)


- (void) __init_org_xmlvm_iphone_UINavigationController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)viewc {
	[self initWithRootViewController:viewc];
}

- (org_xmlvm_iphone_UIViewController*) getTopViewController__ {
	return [self.topViewController retain];
}

- (org_xmlvm_iphone_UIViewController*) getVisibleViewController__ {
	return [self.visibleViewController retain];
}

- (java_util_ArrayList*) getViewControllers__ {
	return [self.viewControllers retain];
}

- (void) setViewControllers___java_util_ArrayList :(java_util_ArrayList*)list {
	self.viewControllers = list;
}

- (void) setViewControllers___java_util_ArrayList_boolean :(java_util_ArrayList*)list :(int)anim {
	[self setViewControllers:list animated:anim];
}

- (void) pushViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)viewc :(int)anim {
	[self pushViewController:viewc animated:anim];
}

- (org_xmlvm_iphone_UIViewController*) popViewControllerAnimated___boolean :(int)anim {
	return [[self popViewControllerAnimated:anim] retain];
}

- (java_util_ArrayList*) popToRootViewControllerAnimated___boolean :(int)anim {
	return [[self popToRootViewControllerAnimated:anim] retain];
}

- (java_util_ArrayList*) popToViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)viewc :(int)anim {
	return [[self popToViewController:viewc animated:anim] retain]; 
}

- (int) isNavigationBarHidden__ {
	return self.navigationBarHidden;
}

- (void) setNavigationBarHidden___boolean :(int)hid {
	self.navigationBarHidden = hid;
}

- (void) setNavigationBarHidden___boolean_boolean :(int)hid :(int)anim {
	[self setNavigationBarHidden:hid animated:anim];
}

- (org_xmlvm_iphone_UINavigationBar*) getNavigationBar__ {
	return [self.navigationBar retain];
}

- (int) isToolbarHidden__ {
	return self.toolbarHidden;
}

- (void) setToolbarHidden___boolean :(int)hid {
	self.toolbarHidden = hid;
}

- (void) setToolbarHidden___boolean_boolean :(int)hid :(int)anim {
	[self setToolbarHidden:hid animated:anim];
}

- (org_xmlvm_iphone_UIToolbar*) getToolbar__ {
	return [self.toolbar retain];
}

- (void) setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate :(org_xmlvm_iphone_UINavigationControllerDelegate*)del {
	self.delegate = del;
}

- (org_xmlvm_iphone_UINavigationControllerDelegate*) getNavigationDelegate__ {
	return [self.delegate retain];
}



@end

