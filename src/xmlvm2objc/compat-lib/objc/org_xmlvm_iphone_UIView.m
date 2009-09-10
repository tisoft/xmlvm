#import "org_xmlvm_iphone_UIView.h"

// UIView
//----------------------------------------------------------------------------

static java_lang_String* layerClassName;

/*
 * We have to use inheritance to override drawRect because we cannot achieve
 * the same with categories.
 */
@implementation org_xmlvm_iphone_UIView : UIView

+ (Class) layerClass
{
	if (layerClassName == nil) {
		return [super layerClass];
	}
	
	return objc_getClass([layerClassName UTF8String]);
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

@end

@implementation UIView (cat_org_xmlvm_iphone_UIView)

- (void) __init_org_xmlvm_iphone_UIView
{
	layerClassName = nil;
	srand(time(NULL));
}

- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	layerClassName = nil;
	[self initWithFrame: [n1 getCGRect]];	
	srand(time(NULL));
}

- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect_java_lang_String :(org_xmlvm_iphone_CGRect*)n1:(java_lang_String*)layer
{
	layerClassName = layer;
	[self initWithFrame: [n1 getCGRect]];	
	srand(time(NULL));
}


- (org_xmlvm_iphone_CGRect*) getBounds
{
    org_xmlvm_iphone_CGRect* rect = [[org_xmlvm_iphone_CGRect alloc] init];
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

- (void) insertSubview___org_xmlvm_iphone_UIView_int :(org_xmlvm_iphone_UIView*) view :(int) idx
{
    [self insertSubview: view atIndex: idx];
}

- (void) bringSubviewToFront___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view
{
	[self bringSubviewToFront: view];
}

- (java_util_List*) getSubviews
{
	java_util_List* views = [self subviews];
	[views retain];
	return views;
}

- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)trans
{
	if (trans == [NSNull null])
 		[self setTransform: CGAffineTransformIdentity];
 	else
    	[self setTransform: trans->transform];
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

- (void) setOpaque___boolean :(int)opaque
{
	[self setOpaque:opaque];
}

- (void) setClearsContextBeforeDrawing___boolean :(int)clear
{
	[self setClearsContextBeforeDrawing:clear];
}

- (org_xmlvm_iphone_gl_CAEAGLLayer*) getEAGLLayer
{
	org_xmlvm_iphone_gl_CAEAGLLayer* result = [[org_xmlvm_iphone_gl_CAEAGLLayer alloc] init];
	result->glLayer = (CAEAGLLayer*) self.layer;
	
	return result;
}

@end
