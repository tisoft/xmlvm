#import "xmlvm.h"
#import "org_xmlvm_iphone_gl_EAGLDrawable.h"

#import <OpenGLES/EAGLDrawable.h>

// org_xmlvm_iphone_gl_EAGLContext
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_gl_EAGLContext : java_lang_Object {
	@public EAGLContext *context;
}

+ (void) setCurrentContext___org_xmlvm_iphone_gl_EAGLContext: (org_xmlvm_iphone_gl_EAGLContext*) context;
- (void) __init_org_xmlvm_iphone_gl_EAGLContext___int: (int) api;
- (void) presentRenderBuffer___int: (int) buffer;
- (void) release;
- (void) renderBufferStorage___int_org_xmlvm_iphone_gl_EAGLDrawable: (int) buffer: (org_xmlvm_iphone_gl_EAGLDrawable*) drawable;

@end
