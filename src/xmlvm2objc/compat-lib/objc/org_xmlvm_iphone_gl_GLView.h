#import <UIKit/UIKit.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import "org_xmlvm_iphone_CGRect.h"

@interface org_xmlvm_iphone_gl_GLView : UIView
{
@private
	/* The pixel dimensions of the backbuffer */
	GLint backingWidth;
	GLint backingHeight;
	
	EAGLContext *context;
	
	/* OpenGL names for the renderbuffer and framebuffers used to render to this view */
	GLuint viewRenderbuffer, viewFramebuffer;
	
	/* OpenGL name for the depth buffer that is attached to viewFramebuffer, if it exists (0 if it does not exist) */
	GLuint depthRenderbuffer;
	
	/* OpenGL name for the sprite texture */
	GLuint spriteTexture;
	
	NSTimer *animationTimer;
	NSTimeInterval animationInterval;
	int _isViewSetup;
}

- (void) __init_org_xmlvm_iphone_gl_GLView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;

- (void)startAnimation;
- (void)stopAnimation;
- (BOOL)createFramebuffer;
- (void)destroyFramebuffer;

- (void)setupView;
- (void)drawView;
- (void)renderView;

@property NSTimeInterval animationInterval;

@end
