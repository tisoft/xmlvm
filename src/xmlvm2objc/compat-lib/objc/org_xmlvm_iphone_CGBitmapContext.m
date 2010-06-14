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

#import "org_xmlvm_iphone_CGBitmapContext.h"

// CGBitmapContext
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGBitmapContext;

+ (org_xmlvm_iphone_CGBitmapContext*) createWithSize___int_int_org_xmlvm_iphone_CGImage :(int) width :(int) height :(org_xmlvm_iphone_CGImage*) image
{		
	org_xmlvm_iphone_CGBitmapContext* retval = [[org_xmlvm_iphone_CGBitmapContext alloc] init];

	retval->data = (unsigned char *) malloc(width * height * 4);
	retval->context = CGBitmapContextCreate(retval->data, width, height, 8, width * 4, CGImageGetColorSpace(image->image), kCGImageAlphaPremultipliedLast);

	return retval;	
}

+ (org_xmlvm_iphone_CGBitmapContext*) createWithSize___int_int :(int) width :(int) height 
{		
	org_xmlvm_iphone_CGBitmapContext* retval = [[org_xmlvm_iphone_CGBitmapContext alloc] init];

	retval->data = (unsigned char *) malloc(width * height * 4);
	retval->context = CGBitmapContextCreate(retval->data, width, height, 8, width * 4, CGColorSpaceCreateDeviceRGB(), kCGImageAlphaPremultipliedLast);

	return retval;	
}

- (java_nio_ByteBuffer *) getData__
{
	java_nio_ByteBuffer* retval = [[java_nio_ByteBuffer alloc] init];
	retval->data = data;

	return retval;
}

- (void) release
{
	free(data);
	CGContextRelease(context);
}

@end


