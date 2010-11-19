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

@interface CroppedImageArgs : NSObject {
@public	CGRect cropRect;
@public	UIImage* croppedImage;
}
@end

@implementation CroppedImageArgs
@end


// UIImage
//----------------------------------------------------------------------------
@implementation UIImage(cat_org_xmlvm_iphone_UIImage);

+ (org_xmlvm_iphone_UIImage*)imageNamed___java_lang_String:(java_lang_String*)path
{
	return_XMLVM_SELECTOR(UIImage imageNamed:path)
}

+ (org_xmlvm_iphone_UIImage*) imageWithContentsOfFile___java_lang_String :(java_lang_String*)path
{
	return [[UIImage alloc] initWithContentsOfFile:path];
	//return_XMLVM_SELECTOR(UIImage imageWithContentsOfFile:path)
}

+ (org_xmlvm_iphone_UIImage*) imageWithData___org_xmlvm_iphone_NSData: (org_xmlvm_iphone_NSData*) data
{
	return [[UIImage alloc] initWithData:data];
	//return_XMLVM_SELECTOR(UIImage imageWithData:data)
}

- (org_xmlvm_iphone_UIImage*) stretchableImage___int_int :(int)leftCapWidth :(int)topCapHeight
{
	return_XMLVM(stretchableImageWithLeftCapWidth:leftCapWidth topCapHeight:topCapHeight)
}

- (org_xmlvm_iphone_CGSize*) getSize__
{
    org_xmlvm_iphone_CGSize* s = [[org_xmlvm_iphone_CGSize alloc] init];
    s->width_float = [self size].width;
    s->height_float = [self size].height;
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

/*
 * We perform the cropping on the main thread in case the cropping is
 * done in a thread. Quartz is not thread-safe.
 */
- (void) cropImage: (id) args
{
	CGRect cropRect = ((CroppedImageArgs*) args)->cropRect;
	CGSize size = cropRect.size;
	UIGraphicsBeginImageContext(size);
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGImageRef subImage = CGImageCreateWithImageInRect([self CGImage], cropRect);
	CGRect myRect = CGRectMake(0.0f, 0.0f, size.width, size.height);
	CGContextScaleCTM(context, 1.0f, -1.0f);
	CGContextTranslateCTM(context, 0.0f, -size.height);
	CGContextFlush(context);
	CGContextDrawImage(context, myRect, subImage);
	CGContextFlush(context);
	UIImage* croppedImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	[croppedImage retain];
	CGImageRelease(subImage);
	((CroppedImageArgs *) args)->croppedImage = croppedImage;
}

- (org_xmlvm_iphone_UIImage *) cropImage___int_int_int_int: (int) x :(int) y :(int) width :(int) height
{
	CroppedImageArgs* args = [[CroppedImageArgs alloc] init];
	args->cropRect = CGRectMake(x, y, width, height);
	[self performSelectorOnMainThread:@selector(cropImage:) withObject:args waitUntilDone:TRUE];
	UIImage* croppedImage = args->croppedImage;
	[args release];
	return croppedImage;
}

- (org_xmlvm_iphone_NSData*) PNGRepresentation__
{
	NSData * data = UIImagePNGRepresentation(self);
	return [data retain];
}

- (org_xmlvm_iphone_NSData*) JPEGRepresentation___float:(float) compression
{
	NSData * data = UIImageJPEGRepresentation(self, compression);
	return [data retain];
}


@end
