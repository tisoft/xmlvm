#import "org_xmlvm_iphone_UIScreen.h"



@implementation org_xmlvm_iphone_UIScreen;

+ (org_xmlvm_iphone_CGRect*) fullScreenApplicationContentRect
{
	CGRect rect = [[UIScreen mainScreen] bounds];
    org_xmlvm_iphone_CGRect* xmlvmCGRect = [[[org_xmlvm_iphone_CGRect alloc] init] autorelease];
    xmlvmCGRect->origin->x = rect.origin.x;
    xmlvmCGRect->origin->y = rect.origin.y;
    xmlvmCGRect->size->width = rect.size.width;
    xmlvmCGRect->size->height = rect.size.height;
    return xmlvmCGRect;
}


+ (void) _setStatusBarHeight___float: (float) height
{
	[[UIApplication sharedApplication] setStatusBarHidden:YES animated:NO];
}
@end
