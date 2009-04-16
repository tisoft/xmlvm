#import "org_xmlvm_iphone_UIImageView.h"



// UIImageView
//----------------------------------------------------------------------------
@implementation UIImageView (cat_org_xmlvm_iphone_UIImageView);

/*
- (id) init
{
    [super init];
    imageView = [[UIImageView alloc] init];
}
*/

- (void) __init_org_xmlvm_iphone_UIImageView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
	
}

- (void) setFrame___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)n1
{
	[self setFrame: [n1 getCGRect]];
}

- (void) setImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image
{
    [self setImage: image];
}

- (org_xmlvm_iphone_UIImage*) getImage
{
    return self.image;
}

- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
	[self setNeedsDisplayInRect: [rect getCGRect]];
}

@end

