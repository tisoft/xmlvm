#import "org_xmlvm_iphone_CGContext.h"



// CGContext
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGContext;

+ (org_xmlvm_iphone_CGContext*) UICurrentContext
{
	
    org_xmlvm_iphone_CGContext* c = [[org_xmlvm_iphone_CGContext alloc] init];
	c->context = UIGraphicsGetCurrentContext();
    return c;
}
    

- (void) setFillColor___float_ARRAYTYPE: (NSMutableArray*) color
{
    float c[4] = { [[color objectAtIndex:0] floatValue],
                   [[color objectAtIndex:1] floatValue],
                   [[color objectAtIndex:2] floatValue],
                   [[color objectAtIndex:3] floatValue] };
    CGContextSetFillColor(context, c);
}

- (void) fillRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    CGContextFillRect(context, r);
}


@end