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

+ (org_xmlvm_iphone_UIImage*) imageAtPath___java_lang_String :(NSString*)n1
{
	org_xmlvm_iphone_UIImage *toRet = [UIImage imageNamed:n1];
	return toRet;
}

- (org_xmlvm_iphone_CGSize*) getSize
{
    org_xmlvm_iphone_CGSize* s = [[org_xmlvm_iphone_CGSize alloc] init];
    s->width = [self size].width;
    s->height = [self size].height;
    return s;
}

- (void) draw1PartImageInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
    CGRect r = [rect getCGRect];
    [self drawInRect: r];
}

- (void) draw___int_int :(int)x :(int)y
{
	CGPoint p = CGPointMake(x,y);
	p.x = x;
	p.y = y;
	[self drawAtPoint: p];
}

- (org_xmlvm_iphone_CGImage*) getCoreImage
{
	org_xmlvm_iphone_CGImage* retval = [[org_xmlvm_iphone_CGImage alloc] init];
	retval->image = [self CGImage];

	return retval;
}

@end
