#import "org_xmlvm_iphone_CGImage.h"


// CGImage
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGImage;

/*
 This creates a CGImage that must be disposed of manually.
*/
+ (org_xmlvm_iphone_CGImage*) createPNGFromDataProvider___org_xmlvm_iphone_CGDataProvider :(org_xmlvm_iphone_CGDataProvider*)provider
{
	org_xmlvm_iphone_CGImage *retval = [[org_xmlvm_iphone_CGImage alloc] init];
	retval->image = CGImageCreateWithPNGDataProvider(provider->provider, NULL, FALSE, kCGRenderingIntentDefault);
	CGDataProviderRelease(provider->provider);	
	return retval;
}

+ (org_xmlvm_iphone_CGImage*) createWithImageInRect___org_xmlvm_iphone_CGImage_org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGImage*) image : (org_xmlvm_iphone_CGRect*) rect
{
	org_xmlvm_iphone_CGImage *retval = [[org_xmlvm_iphone_CGImage alloc] init];
	retval->image = CGImageCreateWithImageInRect(image->image, [rect getCGRect]);
	return retval;
}

- (CGImageRef) getCGImage
{
	return image;
}



- (org_xmlvm_iphone_CGSize*) getSize
{
    org_xmlvm_iphone_CGSize* s = [[org_xmlvm_iphone_CGSize alloc] init];
    s->width = CGImageGetWidth( image );
    s->height = CGImageGetHeight( image );
    return s;
}

@end


