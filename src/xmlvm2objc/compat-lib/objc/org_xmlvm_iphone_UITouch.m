#import "org_xmlvm_iphone_UITouch.h"


// UITouch
//----------------------------------------------------------------------------
@implementation UITouch (cat_org_xmlvm_iphone_UITouch)

- (org_xmlvm_iphone_UIView*) getView
{
	return [self view];
}

- (org_xmlvm_iphone_CGPoint*) locationInView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view
{
	CGPoint p1 = [self locationInView: view];
	org_xmlvm_iphone_CGPoint* p2 = [[[org_xmlvm_iphone_CGPoint alloc] init] autorelease];
	p2->x = p1.x;
	p2->y = p1.y;
	return p2;
}

@end