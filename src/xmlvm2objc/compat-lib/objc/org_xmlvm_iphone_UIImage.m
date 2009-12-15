/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

#import "org_xmlvm_iphone_UIImage.h"


// UIImage
//----------------------------------------------------------------------------
@implementation UIImage(cat_org_xmlvm_iphone_UIImage);

+ (org_xmlvm_iphone_UIImage*) imageWithContentsOfFile___java_lang_String :(NSString*)path
{
	org_xmlvm_iphone_UIImage *toRet = [[UIImage imageNamed:path] retain];
	return toRet != nil ? toRet : [NSNull null];
}

- (org_xmlvm_iphone_CGSize*) getSize__
{
    org_xmlvm_iphone_CGSize* s = [[org_xmlvm_iphone_CGSize alloc] init];
    s->width = [self size].width;
    s->height = [self size].height;
    return s;
}

- (void) drawInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
    CGRect r = [rect getCGRect];
    [self drawInRect: r];
}

- (void) drawAtPoint___int_int :(int)x :(int)y
{
	CGPoint p = CGPointMake(x,y);
	p.x = x;
	p.y = y;
	[self drawAtPoint: p];
}

- (org_xmlvm_iphone_CGImage*) getCGImage__
{
	org_xmlvm_iphone_CGImage* retval = [[org_xmlvm_iphone_CGImage alloc] init];
	retval->image = [self CGImage];

	return retval;
}

- (org_xmlvm_iphone_UIImage *) cropImage___int_int_int_int: (int) x :(int) y :(int) width :(int) height
{
	CGRect cropRect = CGRectMake(x, y, width, height);
	CGSize size = cropRect.size;
	UIGraphicsBeginImageContext(size);
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGImageRef subImage = CGImageCreateWithImageInRect([self CGImage], cropRect);
	CGRect myRect = CGRectMake(0.0f, 0.0f, size.width, size.height);
	//CGContextScaleCTM(context, 1.0f, -1.0f);
	//CGContextTranslateCTM(context, 0.0f, -size.height);
	CGContextDrawImage(context, myRect, subImage);
	UIImage* croppedImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	CGImageRelease(subImage);
	return [croppedImage retain];
}

@end
