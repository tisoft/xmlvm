/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#import "org_xmlvm_iphone_UIViewController.h"

//#import "org_xmlvm_iphone_UINavigationController.h"
//#import "org_xmlvm_iphone_UITabBarController.h"
#import "org_xmlvm_iphone_UITabBarItem.h"
//




@implementation org_xmlvm_iphone_UIViewController
UIVIEWCONTROLLER_CALLBACKS
@end


@implementation UIViewController (cat_org_xmlvm_iphone_UIViewControllerImpl);

+ (void) attemptRotationToDeviceOrientation__
{
    NSLog(@"attempt rotation");
    [UIViewController attemptRotationToDeviceOrientation];
}

- (void) __init_org_xmlvm_iphone_UIViewController__ {
}

- (int) isViewLoaded__ {
	return [self isViewLoaded];
}


- (org_xmlvm_iphone_UIView*) rotatingHeaderView__ {
	return_XMLVM(rotatingHeaderView)
}

- (org_xmlvm_iphone_UIView*) rotatingFooterView__ {
	return_XMLVM(rotatingFooterView)
}

- (void) didReceiveMemoryWarning {
	[self didReceiveMemoryWarning__];
}
- (void) didReceiveMemoryWarning__ {
}

- (BOOL) wantsFullScreenLayout {
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

- (int) getModalPresentationStyle__ {
    return self.modalPresentationStyle;
}

- (void) setModalPresentationStyle___int: (int) modalPresentationStyle {
    self.modalPresentationStyle = modalPresentationStyle;
}

- (int) getModalTransitionStyle__ {
    return self.modalTransitionStyle;
}

- (void) setModalTransitionStyle___int: (int) modalTransitionStyle {
    self.modalTransitionStyle = modalTransitionStyle;
}

- (org_xmlvm_iphone_UITabBarController*) getTabBarController__ {
	return_XMLVM(tabBarController)
}

- (org_xmlvm_iphone_UITabBarItem*) getTabBarItem__ {
	return_XMLVM(tabBarItem)
}

- (void) setTabBarItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)n1 {
	[self setTabBarItem:n1];
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
	return_XMLVM(view)
}

- (void) setView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1 {
	[self setView:n1];
}

- (java_lang_String*) getTitle__ {
	return_XMLVM(title)
}

- (void) setTitle___java_lang_String :(java_lang_String*)n1 {
	[self setTitle:XMLVM_NULL2NIL(n1)];
}

- (void) setWantsFullScreenLayout___boolean :(int)n1 {
	[self setWantsFullScreenLayout:n1];
}

- (org_xmlvm_iphone_UINavigationController*) getNavigationController__ {
	return_XMLVM(navigationController) 
}

- (org_xmlvm_iphone_UINavigationItem*) getNavigationItem__
{
	return_XMLVM(navigationItem)
}

- (org_xmlvm_iphone_UIBarButtonItem*) editButtonItem__
{
	return_XMLVM(editButtonItem)
}


- (void) setEditing___boolean :(int)n1 {
	[self setEditing:n1];
}

- (void) setEditing___boolean_boolean :(int)n1 :(int)n2 {
	[self setEditing:n1 animated:n2];
}

- (void) setHidesBottomBarWhenPushed___boolean :(int)n1 {
	[self setHidesBottomBarWhenPushed:n1];
}

- (java_util_List*) getToolbarItems__ {
	return_XMLVM(toolbarItems)
}

- (void) setToolbarItems___java_util_List :(java_util_List*)n1 {
	[self setToolbarItems:n1];
}

- (void) setToolbarItems___java_util_List_boolean :(java_util_List*)n1 :(int)animated {
	[self setToolbarItems:n1 animated:animated];
}

- (void) presentModalViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)modalViewController :(int)animated 
{
	[self presentModalViewController:modalViewController animated:animated];
}

- (void) dismissModalViewControllerAnimated___boolean :(int)animated
{
	[self dismissModalViewControllerAnimated:animated];
}

- (org_xmlvm_iphone_CGSize*) getContentSizeForViewInPopover__
{
    return [[org_xmlvm_iphone_CGSize alloc] initWithCGSize:[self contentSizeForViewInPopover]];
}

- (void) setContentSizeForViewInPopover___org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGSize*)size
{
    [self setContentSizeForViewInPopover:[size getCGSize]];
}

- (BOOL) prefersStatusBarHidden__
{
    return NO;
}
- (BOOL) prefersStatusBarHidden
{
    return [self prefersStatusBarHidden__];
}

- (void) setEdgesForExtendedLayout___int:(int) edgesForExtendedLayout
{
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        [self setEdgesForExtendedLayout:edgesForExtendedLayout];
    }
}

- (int) getEdgesForExtendedLayout__
{
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        return [self edgesForExtendedLayout];
    } else {
        return 0;
    }
}

- (void) setAutomaticallyAdjustsScrollViewInsets___boolean:(BOOL) automaticallyAdjustsScrollViewInsets
{
    if ([self respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
        [self setAutomaticallyAdjustsScrollViewInsets:automaticallyAdjustsScrollViewInsets];
    }
}

- (BOOL) isAutomaticallyAdjustsScrollViewInsets__
{
    if ([self respondsToSelector:@selector(automaticallyAdjustsScrollViewInsets)]) {
        return [self automaticallyAdjustsScrollViewInsets];
    } else {
        return NO;
    }
}

@end

