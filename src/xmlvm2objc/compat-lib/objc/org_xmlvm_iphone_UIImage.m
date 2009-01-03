#import "org_xmlvm_iphone_UIImage.h"


// UIImage
//----------------------------------------------------------------------------
@implementation UIImage(cat_org_xmlvm_iphone_UIImage);

+ (org_xmlvm_iphone_UIImage*) imageAtPath___java_lang_String :(NSString*)n1
{
	org_xmlvm_iphone_UIImage *toRet = [UIImage imageNamed:n1];
	return toRet;
}

- (void) draw1PartImageInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
    CGRect r = [rect getCGRect];
    [self drawInRect: r];
}
@end
