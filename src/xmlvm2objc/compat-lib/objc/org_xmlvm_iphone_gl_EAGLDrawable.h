#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGContext.h"
#import "org_xmlvm_iphone_CGDataProvider.h"
#import <OpenGLES/EAGLDrawable.h>
#import <QuartzCore/CAEAGLLayer.h>

// EAGLDrawable
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_gl_EAGLDrawable : java_lang_Object {
	@public CAEAGLLayer *drawable;
}

@end
