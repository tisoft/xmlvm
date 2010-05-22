#import "org_xmlvm_iphone_UIActionSheetDelegate.h"


@implementation org_xmlvm_iphone_UIActionSheetDelegate;

- (void) __init_org_xmlvm_iphone_UIActionSheetDelegate__
{
}


- (void) clickedButtonAtIndex___org_xmlvm_iphone_UIActionSheet_int :(org_xmlvm_iphone_UIActionSheet*)n1 :(int)n2
{
}


- (void) willPresentActionSheet___org_xmlvm_iphone_UIActionSheet :(org_xmlvm_iphone_UIActionSheet*)n1
{
}


- (void) didPresentActionSheet___org_xmlvm_iphone_UIActionSheet :(org_xmlvm_iphone_UIActionSheet*)n1
{
}


- (void) willDismissWithButtonIndex___org_xmlvm_iphone_UIActionSheet_int :(org_xmlvm_iphone_UIActionSheet*)n1 :(int)n2
{
}


- (void) didDismissWithButtonIndex___org_xmlvm_iphone_UIActionSheet_int :(org_xmlvm_iphone_UIActionSheet*)n1 :(int)n2
{
}


- (void) actionSheetCancel___org_xmlvm_iphone_UIActionSheet :(org_xmlvm_iphone_UIActionSheet*)n1
{
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex 
{
	[self clickedButtonAtIndex___org_xmlvm_iphone_UIActionSheet_int:actionSheet :buttonIndex];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex 
{
	[self didDismissWithButtonIndex___org_xmlvm_iphone_UIActionSheet_int:actionSheet :buttonIndex];
}

- (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex 
{
	[self willDismissWithButtonIndex___org_xmlvm_iphone_UIActionSheet_int:actionSheet :buttonIndex];
}

- (void)actionSheetCancel:(UIActionSheet *)actionSheet 
{
	[self actionSheetCancel___org_xmlvm_iphone_UIActionSheet:actionSheet];
}

- (void)didPresentActionSheet:(UIActionSheet *)actionSheet 
{
	[self didPresentActionSheet___org_xmlvm_iphone_UIActionSheet:actionSheet];
}

- (void)willPresentActionSheet:(UIActionSheet *)actionSheet 
{
	[self willPresentActionSheet___org_xmlvm_iphone_UIActionSheet:actionSheet];
}

@end

