#import "org_xmlvm_iphone_UIScreen.h"



@implementation org_xmlvm_iphone_UIScreen;

+ (org_xmlvm_iphone_UIScreen*) mainScreen
{
	org_xmlvm_iphone_UIScreen* xmlvmScreen = [[[org_xmlvm_iphone_UIScreen alloc] init] autorelease];
	xmlvmScreen->screen = [UIScreen mainScreen];
	return xmlvmScreen;
}

- (org_xmlvm_iphone_CGRect*) bounds
{
	CGRect rect = [screen bounds];
    org_xmlvm_iphone_CGRect* xmlvmCGRect = [[[org_xmlvm_iphone_CGRect alloc] init] autorelease];
    xmlvmCGRect->origin->x = rect.origin.x;
    xmlvmCGRect->origin->y = rect.origin.y;
    xmlvmCGRect->size->width = rect.size.width;
    xmlvmCGRect->size->height = rect.size.height;
    return xmlvmCGRect;
}

- (org_xmlvm_iphone_CGRect*) applicationFrame
{
	CGRect rect = [screen applicationFrame];
    org_xmlvm_iphone_CGRect* xmlvmCGRect = [[[org_xmlvm_iphone_CGRect alloc] init] autorelease];
    xmlvmCGRect->origin->x = rect.origin.x;
    xmlvmCGRect->origin->y = rect.origin.y;
    xmlvmCGRect->size->width = rect.size.width;
    xmlvmCGRect->size->height = rect.size.height;
    return xmlvmCGRect;
}
@end
