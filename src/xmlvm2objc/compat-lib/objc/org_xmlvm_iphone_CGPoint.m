#import "org_xmlvm_iphone_CGPoint.h"

// CGPoint
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGPoint;

- (void) _PUT_x: (float) x_
{
	self->x = x_;
}

- (float) _GET_x
{
	return self->x;
}

- (void) _PUT_y: (float) y_
{
	self->y = y_;
}

- (float) _GET_y
{
	return self->y;
}

@end