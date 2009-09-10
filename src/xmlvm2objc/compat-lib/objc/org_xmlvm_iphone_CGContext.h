#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGFont.h"
#import "org_xmlvm_iphone_CGImage.h"

@class org_xmlvm_iphone_CGLayer;

// CGContext
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGContext : java_lang_Object {
@public CGContextRef context;
@public CGFontRef localFont;
@public float localSize;
}
+ (org_xmlvm_iphone_CGContext*) UICurrentContext;
- (void) setFillColor___float_ARRAYTYPE: (NSMutableArray*) color;
- (void) setStrokeColor___float_ARRAYTYPE: (NSMutableArray*) color;
- (void) fillRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) strokeRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) fillEllipseInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) clipToRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) translate___float_float :(float)x :(float)y;
- (void) rotate___float :(float)ang;
- (void) scale___float_float :(float) sx :(float) sy;
- (void) setAlpha___float :(float)alpha;

- (void) setFont___org_xmlvm_iphone_CGFont: (org_xmlvm_iphone_CGFont*)font;
- (void) setFontSize___float :(float)size;
- (void) showTextAtPoint___float_float_java_lang_String: (float)x: (float)y: (NSString*)text;
- (void) showText___java_lang_String: (NSString*)text;
- (org_xmlvm_iphone_CGPoint*) getTextPosition;
- (void) setTextDrawingMode___int :(int)mode;

- (void) storeState;
- (void) restoreState;
- (org_xmlvm_iphone_CGRect*)getClip;

- (void) drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage: (org_xmlvm_iphone_CGRect*)rect: (org_xmlvm_iphone_CGImage*)image;
- (void) drawLayer___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGLayer: (org_xmlvm_iphone_CGRect*)rect: (org_xmlvm_iphone_CGLayer*)layer;
@end
