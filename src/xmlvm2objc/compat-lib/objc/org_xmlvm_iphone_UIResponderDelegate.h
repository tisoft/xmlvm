
#import "xmlvm.h"
#import "java_util_Set.h"
#import "org_xmlvm_iphone_UIEvent.h"


@protocol org_xmlvm_iphone_UIResponderDelegate

- (void) touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent
             : (java_util_Set*) touches
             : (org_xmlvm_iphone_UIEvent*) event;

- (void) touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent
             : (java_util_Set*) touches
             : (org_xmlvm_iphone_UIEvent*) event;

- (void) touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent
             : (java_util_Set*) touches
             : (org_xmlvm_iphone_UIEvent*) event;

- (void) touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent
             : (java_util_Set*) touches
             : (org_xmlvm_iphone_UIEvent*) event;

@end
