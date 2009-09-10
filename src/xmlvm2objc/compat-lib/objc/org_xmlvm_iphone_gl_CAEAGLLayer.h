#import "xmlvm.h"
#import "org_xmlvm_iphone_gl_EAGLDrawable.h"
#import <QuartzCore/CAEAGLLayer.h>


// CALayer
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_gl_CAEAGLLayer : java_lang_Object {
	@public CAEAGLLayer* glLayer;
}

- (id) init;
- (org_xmlvm_iphone_gl_EAGLDrawable*) getDrawable;

@end
