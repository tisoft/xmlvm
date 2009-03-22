#import "org_xmlvm_iphone_UIImage.h"


// UIImage
//----------------------------------------------------------------------------
@implementation UIImage(cat_org_xmlvm_iphone_UIImage);

+ (org_xmlvm_iphone_UIImage*) imageAtPath___java_lang_String :(NSString*)n1
{
	org_xmlvm_iphone_UIImage *toRet = [UIImage imageNamed:n1];
	return toRet;
}

- (org_xmlvm_iphone_CGSize*) getSize
{
    org_xmlvm_iphone_CGSize* s = [[[org_xmlvm_iphone_CGSize alloc] init] autorelease];
    s->width = [self size].width;
    s->height = [self size].height;
    return s;
}

- (void) draw1PartImageInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
    CGRect r = [rect getCGRect];
    [self drawInRect: r];
}
@end
