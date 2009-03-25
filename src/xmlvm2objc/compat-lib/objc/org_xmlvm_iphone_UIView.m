#import "org_xmlvm_iphone_UIView.h"


// UIView
//----------------------------------------------------------------------------

/*
 * We have to use inheritance to override drawRect because we cannot achieve
 * the same with categories.
 */
@implementation org_xmlvm_iphone_UIView : UIView

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

@end


@implementation UIView (cat_org_xmlvm_iphone_UIView)

- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}

- (org_xmlvm_iphone_CGRect*) getBounds
{
    org_xmlvm_iphone_CGRect* rect = [[[org_xmlvm_iphone_CGRect alloc] init] autorelease];
    rect->origin->x = self.bounds.origin.x;
    rect->origin->y = self.bounds.origin.y;
    rect->size->width = self.bounds.size.width;
    rect->size->height = self.bounds.size.height;
    return rect;
}

- (void) setFrame___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) frame
{
	self.frame = [frame getCGRect];
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

- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
    // Will not be called because overridden in derived class
}

@end
