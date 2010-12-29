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


