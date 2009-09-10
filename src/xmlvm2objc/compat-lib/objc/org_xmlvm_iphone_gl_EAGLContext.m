#import "org_xmlvm_iphone_gl_EAGLContext.h"


// org_xmlvm_iphone_gl_EAGLContext
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_gl_EAGLContext;


+ (void) setCurrentContext___org_xmlvm_iphone_gl_EAGLContext: (org_xmlvm_iphone_gl_EAGLContext*) context
{
	[EAGLContext setCurrentContext: context->context];
}

- (void) __init_org_xmlvm_iphone_gl_EAGLContext___int: (int) api
{	
	[self init];
	
	self->context = [[EAGLContext alloc] initWithAPI:api];
}

- (void) presentRenderBuffer___int: (int) buffer
{
	[self->context presentRenderbuffer:buffer];
}

- (void) release
{
	[self->context release];
}

- (void) dealloc
{
	[self release];
}

- (void) renderBufferStorage___int_org_xmlvm_iphone_gl_EAGLDrawable: (int) buffer: (org_xmlvm_iphone_gl_EAGLDrawable*) drawable
{
	[self->context renderbufferStorage:buffer fromDrawable:drawable->drawable];
}

@end


