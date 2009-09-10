#import "xmlvm.h"
#import "java_util_List.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGAffineTransform.h"
#import "org_xmlvm_iphone_CALayer.h"
#import "org_xmlvm_iphone_gl_CAEAGLLayer.h"

// UIView
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIView : UIView
- (void) drawRect:(CGRect)rect;
+ (Class) layerClass;
@end

@interface UIView (cat_org_xmlvm_iphone_UIView)
- (void) __init_org_xmlvm_iphone_UIView;
- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect_java_lang_String :(org_xmlvm_iphone_CGRect*)n1:(java_lang_String*)layer;
- (org_xmlvm_iphone_CGRect*) getBounds;
- (void) setFrame___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) frame;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view;
- (void) insertSubview___org_xmlvm_iphone_UIView_int :(org_xmlvm_iphone_UIView*) view :(int) idx;
- (void) bringSubviewToFront___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view;
- (java_util_List*) getSubviews;
- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)transform;
- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) setOpaque___boolean :(int) opaque;
- (void) setClearsContextBeforeDrawing___boolean :(int) clear;
- (org_xmlvm_iphone_gl_CAEAGLLayer*) getEAGLLayer;
@end
