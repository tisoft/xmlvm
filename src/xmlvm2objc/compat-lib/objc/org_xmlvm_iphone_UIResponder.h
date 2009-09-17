#import "xmlvm.h"
#import "java_util_Set.h"
#import "org_xmlvm_iphone_UIEvent.h"
#import "org_xmlvm_iphone_UIResponderDelegate.h"



// UIResponder
//----------------------------------------------------------------------------
@interface UIResponder (cat_org_xmlvm_iphone_UIResponder)

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void) touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event;

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
- (void) touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event;

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (void) touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event;

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
- (void) touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event;

- (void) setDelegate___org_xmlvm_iphone_UIResponderDelegate
             :(id<org_xmlvm_iphone_UIResponderDelegate>) delegate;
             
@end
