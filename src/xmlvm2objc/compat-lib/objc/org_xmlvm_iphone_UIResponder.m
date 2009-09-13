#import "org_xmlvm_iphone_UIResponder.h"

static NSMutableDictionary* delegates;


// UIResponder
//----------------------------------------------------------------------------
@implementation UIResponder (cat_org_xmlvm_iphone_UIResponder)

+ (void) initialize
{
	if (delegates == nil) {
		delegates = [[NSMutableDictionary alloc] init];
	}
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    id delegate = [delegates objectForKey: [self getKey]];
    if (delegate != nil) {
        [delegate touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
    }
    
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
    id delegate = [delegates objectForKey: [self getKey]];
    if (delegate != nil) {
        [delegate touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
    }
    
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
    id delegate = [delegates objectForKey: [self getKey]];
    if (delegate != nil) {
        [delegate touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
    }
    
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
    id delegate = [delegates objectForKey: [self getKey]];
    if (delegate != nil) {
        [delegate touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent :touches :event];
    }
    
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

- (void) setDelegate___org_xmlvm_iphone_UIResponderDelegate
             :(id) delegate
{
    if (delegate != [NSNull null]) {
        [delegates setObject: delegate forKey: [self getKey]];
    }
    else {
        [delegates removeObjectForKey: [self getKey]];
    }
}

- (NSString*) getKey
{
	return [[NSString alloc] initWithFormat: @"%d", self];
}

@end