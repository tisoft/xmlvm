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

#import "org_xmlvm_iphone_CGContext.h"
#import "org_xmlvm_iphone_CGLayer.h"
#import <CoreGraphics/CGLayer.h>


// CGContext
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGContext;

+ (org_xmlvm_iphone_CGContext*) UICurrentContext__
{
	
    org_xmlvm_iphone_CGContext* c = [[org_xmlvm_iphone_CGContext alloc] init];
	c->context = UIGraphicsGetCurrentContext();
    return c;
}
    

- (void) setFillColor___float_ARRAYTYPE: (XMLVMArray*) color
{
    CGContextSetFillColor(context, color->array.f);
}

- (void) setStrokeColor___float_ARRAYTYPE: (XMLVMArray*) color
{
    CGContextSetStrokeColor(context, color->array.f);
}

- (void) fillRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    CGContextFillRect(context, r);
}

- (void) strokeRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    CGContextStrokeRect(context, r);
}

- (void) fillEllipseInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    CGContextFillEllipseInRect(context, r);
}

- (void) clipToRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    CGContextClipToRect(context, r);
}

- (void) translate___float_float :(float)x :(float)y
{
	CGContextTranslateCTM(context, x, y);
}

- (void) rotate___float :(float)ang
{
	CGContextRotateCTM(context, ang);
}

- (void) scale___float_float: (float) sx :(float) sy
{
	CGContextScaleCTM(context, sx, sy);
}

- (void) setAlpha___float :(float)alpha
{
	CGContextSetAlpha(context, alpha);
}

- (void) setFont___org_xmlvm_iphone_CGFont: (org_xmlvm_iphone_CGFont*)font
{
	localFont = font->font;
	CGContextSetFont(context, font->font);
	CGContextSetTextMatrix(context, CGAffineTransformMakeScale(1,-1));
}

- (void) setFontSize___float :(float)size
{
	localSize = size;
	CGContextSetFontSize(context, size);
}

- (void) showTextAtPoint___float_float_java_lang_String: (float)x: (float)y: (NSString*)text
{
    CGContextShowTextAtPoint(context, x, y, [text UTF8String], [text length]);
}

- (void) showText___java_lang_String: (NSString*)text
{
    CGContextShowText(context, [text UTF8String],[text length]);
}

- (org_xmlvm_iphone_CGPoint*) getTextPosition__
{
	CGPoint pt = CGContextGetTextPosition(context);
	org_xmlvm_iphone_CGPoint* retVal = [[org_xmlvm_iphone_CGPoint alloc] init];
	retVal->x = pt.x;
	retVal->y = pt.y;
	
	return retVal;
}

- (org_xmlvm_iphone_CGRect*)getClip__;
{
	CGRect rect = CGContextGetClipBoundingBox(context);
	org_xmlvm_iphone_CGRect* retVal = [[org_xmlvm_iphone_CGRect alloc] init];
	retVal->origin->x = rect.origin.x;
	retVal->origin->y = rect.origin.y;
	retVal->size->width = rect.size.width;
	retVal->size->height = rect.size.height;
	
	return retVal;
}

- (void) setTextDrawingMode___int :(int)mode
{
	if (mode == 1) {
		CGContextSetTextDrawingMode(context, kCGTextInvisible);
	} else {
		CGContextSetTextDrawingMode(context, kCGTextFill);
	}
}

- (void) storeState__
{
	CGContextSaveGState(context);
}

- (void) restoreState__
{
	CGContextRestoreGState(context);
}


- (void) drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage: (org_xmlvm_iphone_CGRect*)rect: (org_xmlvm_iphone_CGImage*)image
{
	CGRect r = [rect getCGRect];
	CGImageRef i = [image getCGImage];
	CGContextDrawImage(context, r, i);
}

- (void) drawLayer___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGLayer: (org_xmlvm_iphone_CGRect*)rect: (org_xmlvm_iphone_CGLayer*)layer
{
	CGRect r = [rect getCGRect];
	CGLayerRef l = [layer getCGLayer];
	CGContextDrawLayerInRect(context, r, l);
}

@end
