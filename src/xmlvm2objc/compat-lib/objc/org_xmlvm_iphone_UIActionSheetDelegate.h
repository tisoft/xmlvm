#import "xmlvm.h"
#import "org_xmlvm_iphone_NSObject.h"
#import "org_xmlvm_iphone_UIActionSheet.h"


@interface org_xmlvm_iphone_UIActionSheetDelegate : org_xmlvm_iphone_NSObject<UIActionSheetDelegate>
- (void) __init_org_xmlvm_iphone_UIActionSheetDelegate__;
- (void) clickedButtonAtIndex___org_xmlvm_iphone_UIActionSheet_int :(org_xmlvm_iphone_UIActionSheet*)n1 :(int)n2;
- (void) willPresentActionSheet___org_xmlvm_iphone_UIActionSheet :(org_xmlvm_iphone_UIActionSheet*)n1;
- (void) didPresentActionSheet___org_xmlvm_iphone_UIActionSheet :(org_xmlvm_iphone_UIActionSheet*)n1;
- (void) willDismissWithButtonIndex___org_xmlvm_iphone_UIActionSheet_int :(org_xmlvm_iphone_UIActionSheet*)n1 :(int)n2;
- (void) didDismissWithButtonIndex___org_xmlvm_iphone_UIActionSheet_int :(org_xmlvm_iphone_UIActionSheet*)n1 :(int)n2;
- (void) actionSheetCancel___org_xmlvm_iphone_UIActionSheet :(org_xmlvm_iphone_UIActionSheet*)n1;
@end

