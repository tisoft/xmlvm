#import "org_xmlvm_iphone_UIResponder.h"


// UIResponder
//----------------------------------------------------------------------------
@implementation UIResponder (cat_org_xmlvm_iphone_UIResponder)

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	[self touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
	if (self.nextResponder != nil) {
		[self.nextResponder touchesBegan: touches withEvent:event];
	}
}

- (void) touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event
{
	// Do nothing
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
	[self touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
	if (self.nextResponder != nil) {
		[self.nextResponder touchesCancelled: touches withEvent:event];
	}
}

- (void) touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event
{
	// Do nothing
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	[self touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
	if (self.nextResponder != nil) {
		[self.nextResponder touchesEnded: touches withEvent:event];
	}
}

- (void) touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event
{
	// Do nothing
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	[self touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
	if (self.nextResponder != nil) {
		[self.nextResponder touchesMoved: touches withEvent:event];
	}
}

- (void) touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent
             :(java_util_Set*) touches
             :(org_xmlvm_iphone_UIEvent*) event
{
	// Do nothing
}

@end