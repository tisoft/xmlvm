/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

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



- (org_xmlvm_iphone_CGSize*) getSize__
{
    org_xmlvm_iphone_CGSize* s = [[org_xmlvm_iphone_CGSize alloc] init];
    s->width_float = CGImageGetWidth(image);
    s->height_float = CGImageGetHeight(image);
    return s;
}

@end


