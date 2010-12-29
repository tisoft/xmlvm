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
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGImage.h"
#import "org_xmlvm_iphone_NSData.h"
#import "java_lang_String.h"

// UIImage
//----------------------------------------------------------------------------
typedef UIImage org_xmlvm_iphone_UIImage;
@interface UIImage (cat_org_xmlvm_iphone_UIImage)
+ (org_xmlvm_iphone_UIImage*)imageNamed___java_lang_String:(java_lang_String*)n1;
+ (org_xmlvm_iphone_UIImage*) imageWithContentsOfFile___java_lang_String :(java_lang_String*)n1;
+ (org_xmlvm_iphone_UIImage*) imageWithData___org_xmlvm_iphone_NSData: (org_xmlvm_iphone_NSData*) data;
- (org_xmlvm_iphone_UIImage*) stretchableImage___int_int :(int)leftCapWidth :(int)topCapHeight;
- (org_xmlvm_iphone_CGSize*) getSize__;
- (void) drawInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (void) drawAtPoint___int_int :(int)x :(int)y;
- (org_xmlvm_iphone_CGImage*) getCGImage__;
- (void) cropImage: (id) dataPtr;
- (org_xmlvm_iphone_UIImage *) cropImage___int_int_int_int: (int) x :(int) y :(int) width :(int) height;
- (org_xmlvm_iphone_NSData*) PNGRepresentation__;
- (org_xmlvm_iphone_NSData*) JPEGRepresentation___float:(float) compression;
@end
