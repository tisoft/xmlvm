#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGDataProvider.h"
#import <CoreGraphics/CGImage.h>


// CGImage
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGImage : java_lang_Object {
	@public CGImageRef image;
}

+ (org_xmlvm_iphone_CGImage*) createPNGFromDataProvider___org_xmlvm_iphone_CGDataProvider :(org_xmlvm_iphone_CGDataProvider*)provider;
- (CGImageRef) getCGImage;
- (org_xmlvm_iphone_CGSize*) getSize;

@end
