#import "org_xmlvm_iphone_CGSize.h"

// CGSize
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGSize;

- (void) __init_org_xmlvm_iphone_CGSize___float_float: (float) w : (float) h {
	width = w;
	height = h;
}

- (void) _PUT_width: (float) w
{
	self->width = w;
}

- (float) _GET_width
{
	return width;
}

- (void) _PUT_height: (float) h
{
	self->height = h;
}

- (float) _GET_height
{
	return height;
}

@end
