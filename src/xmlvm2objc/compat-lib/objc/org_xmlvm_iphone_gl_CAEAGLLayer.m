#import "org_xmlvm_iphone_gl_CAEAGLLayer.h"


// CALayer
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_gl_CAEAGLLayer;

- (id) init;
{
	[super init];
	
	glLayer.opaque = YES;
	glLayer.drawableProperties = [NSDictionary dictionaryWithObjectsAndKeys:
	[NSNumber numberWithBool:FALSE], kEAGLDrawablePropertyRetainedBacking, kEAGLColorFormatRGBA8, kEAGLDrawablePropertyColorFormat, nil];

	return self;
}

- (org_xmlvm_iphone_gl_EAGLDrawable*) getDrawable
{
	org_xmlvm_iphone_gl_EAGLDrawable* result = [[org_xmlvm_iphone_gl_EAGLDrawable alloc] init];
	result->drawable = self->glLayer;

	return result;
}

@end


