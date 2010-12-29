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

#import "org_xmlvm_iphone_UIGraphics.h"

@implementation org_xmlvm_iphone_UIGraphics;

+ (org_xmlvm_iphone_CGContext*) getCurrentContext__
{
	return [[org_xmlvm_iphone_CGContext alloc] initWithCGContextRef:UIGraphicsGetCurrentContext()];
}

+ (void) pushContext___org_xmlvm_iphone_CGContext :(org_xmlvm_iphone_CGContext*)cxt {
	id context = [cxt getCGContextRef];
	UIGraphicsPushContext(XMLVM_NULL2NIL(context));
}

+ (void) popContext__
{
	UIGraphicsPopContext();
}

+ (void) beginImageContext___org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGSize*)size
{
	UIGraphicsBeginImageContext([size getCGSize]);
}

+ (void) beginImageContextWithOptions___org_xmlvm_iphone_CGSize_boolean_float :(org_xmlvm_iphone_CGSize*)size :(int)opaque :(float)scale
{
	UIGraphicsBeginImageContextWithOptions([size getCGSize], opaque, scale);
}

+ (org_xmlvm_iphone_UIImage*) getImageFromCurrentImageContext__
{
	return [UIGraphicsGetImageFromCurrentImageContext() retain];
}

+ (void) endImageContext__
{
	UIGraphicsEndImageContext();
}

@end

