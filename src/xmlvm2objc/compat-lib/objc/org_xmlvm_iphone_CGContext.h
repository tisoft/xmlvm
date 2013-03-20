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

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGFont.h"
#import "org_xmlvm_iphone_CGImage.h"
#import "org_xmlvm_iphone_UIImage.h"
#import "org_xmlvm_iphone_CGColor.h"

@class org_xmlvm_iphone_CGLayer;

// CGContext
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGContext : java_lang_Object {
@public CGContextRef context;
@public CGFontRef localFont;
@public float localSize;
}

- (id) initWithCGContextRef:(CGContextRef)ref;
- (CGContextRef) getCGContextRef;
- (void) setFillColor___float_ARRAYTYPE: (XMLVMArray*) color;
- (void) setStrokeColor___float_ARRAYTYPE: (XMLVMArray*) color;
- (void) setFillColorWithColor___org_xmlvm_iphone_CGColor:(org_xmlvm_iphone_CGColor*) color;
- (void) setStrokeColorWithColor___org_xmlvm_iphone_CGColor:(org_xmlvm_iphone_CGColor*) color;
- (void) setRGBFillColor___float_float_float_float:(float) red :(float) green :(float) blue :(float) alpha;
- (void) setRGBStrokeColor___float_float_float_float:(float) red :(float) green :(float) blue :(float) alpha;
- (void) setLineCap___int: (int) cap;
- (void) setLineWidth___float: (float) width;
- (void) setLineJoin___int: (int) join;
- (void) fillRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) strokeRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) strokeEllipseInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) fillEllipseInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) clipToRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) translate___float_float :(float)x :(float)y;
- (void) rotate___float :(float)ang;
- (void) scale___float_float :(float) sx :(float) sy;
- (void) setAlpha___float :(float)alpha;
- (void) setFont___org_xmlvm_iphone_CGFont: (org_xmlvm_iphone_CGFont*)font;
- (void) setFontSize___float :(float)size;
- (void) selectFont___java_lang_String_float: (NSString*)name: (float)size;
- (void) setShouldAntialias___boolean :(int) flag;
- (void) setShadowWithColor___float_float_float_float_ARRAYTYPE: (float) dx :(float) dy :(float) blur_radius :(XMLVMArray*) color;
- (void) setTextPosition___float_float: (float)x: (float)y;
- (void) showTextAtPoint___float_float_java_lang_String: (float)x: (float)y: (NSString*)text;
- (void) showText___java_lang_String: (NSString*)text;
- (org_xmlvm_iphone_CGPoint*) getTextPosition__;
- (void) setTextDrawingMode___int :(int)mode;
- (void) strokeLineSegments___org_xmlvm_iphone_CGPoint_ARRAYTYPE:(XMLVMArray*) points;

- (void) storeState__;
- (void) restoreState__;
- (org_xmlvm_iphone_CGRect*)getClip__;

- (void) drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage: (org_xmlvm_iphone_CGRect*)rect: (org_xmlvm_iphone_CGImage*)image;

- (void) beginPath__;
- (void) moveToPoint___float_float: (float) x :(float) y;
- (void) addLineToPoint___float_float: (float) x :(float) y;
- (void) addArc___float_float_float_float_float_int:(float) v1 :(float) v2 :(float) v3 :(float) v4 :(float) v5 :(int) v6;
- (void) addCurveToPoint___float_float_float_float_float_float:(float) v1 :(float) v2 :(float) v3 :(float) v4 :(float) v5 :(float) v6;
- (void) addQuadCurveToPoint___float_float_float_float:(float) v1 :(float) v2 :(float) v3 :(float) v4;
- (void) addRect___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*) rect;
- (void) addRects___org_xmlvm_iphone_CGRect_ARRAYTYPE:(XMLVMArray*) rects;
- (void) addLines___org_xmlvm_iphone_CGPoint_ARRAYTYPE:(XMLVMArray*) points;
- (void) drawPath___int: (int) mode;
- (void) strokePath__;
- (void) fillPath__;
- (void) closePath__;

@end
