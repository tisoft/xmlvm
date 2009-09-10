#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGImage.h"


// UIImage
//----------------------------------------------------------------------------
typedef UIImage org_xmlvm_iphone_UIImage;
@interface UIImage (cat_org_xmlvm_iphone_UIImage)
+ (org_xmlvm_iphone_UIImage*) imageAtPath___java_lang_String :(NSString*)n1;
- (org_xmlvm_iphone_CGSize*) getSize;
- (void) draw1PartImageInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (void) draw___int_int :(int)x :(int)y;
- (org_xmlvm_iphone_CGImage*) getCoreImage;
@end
