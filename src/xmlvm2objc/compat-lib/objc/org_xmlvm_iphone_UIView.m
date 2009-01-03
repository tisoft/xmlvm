#import "org_xmlvm_iphone_UIView.h"



// UIView
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIView;

- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}



- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view
{
    [self addSubview: view];
}

- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    [self setNeedsDisplayInRect: r];
}



- (void) drawRect:(CGRect)rect
{
    org_xmlvm_iphone_CGRect* redrawRect = [[org_xmlvm_iphone_CGRect alloc] init];
    redrawRect->origin->x = rect.origin.x;
    redrawRect->origin->y = rect.origin.y;
    redrawRect->size->width = rect.size.width;
    redrawRect->size->height = rect.size.height;
    [self drawRect___org_xmlvm_iphone_CGRect: redrawRect];
    [redrawRect release];
}

- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{

    // Will not be called because overridden in derived class
	/*
	 for(UIView *subView in [self subviews])
	{
		[subView drawRect: [rect getCGRect]];
	} */
}

@end


