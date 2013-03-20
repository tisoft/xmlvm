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

@class org_xmlvm_iphone_UIImage;
@class org_xmlvm_iphone_CGColor;

// UIColor
//----------------------------------------------------------------------------
typedef UIColor org_xmlvm_iphone_UIColor;
@interface UIColor (cat_org_xmlvm_iphone_UIColor)
+ (org_xmlvm_iphone_UIColor*) colorWithPatternImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*) image;
+ (org_xmlvm_iphone_UIColor*) _GET_blackColor;
+ (org_xmlvm_iphone_UIColor*) _GET_darkGrayColor;
+ (org_xmlvm_iphone_UIColor*) _GET_lightGrayColor;
+ (org_xmlvm_iphone_UIColor*) _GET_whiteColor;
+ (org_xmlvm_iphone_UIColor*) _GET_grayColor;
+ (org_xmlvm_iphone_UIColor*) _GET_redColor;
+ (org_xmlvm_iphone_UIColor*) _GET_greenColor;
+ (org_xmlvm_iphone_UIColor*) _GET_blueColor;
+ (org_xmlvm_iphone_UIColor*) _GET_cyanColor;
+ (org_xmlvm_iphone_UIColor*) _GET_yellowColor;
+ (org_xmlvm_iphone_UIColor*) _GET_magentaColor;
+ (org_xmlvm_iphone_UIColor*) _GET_orangeColor;
+ (org_xmlvm_iphone_UIColor*) _GET_purpleColor;
+ (org_xmlvm_iphone_UIColor*) _GET_brownColor;
+ (org_xmlvm_iphone_UIColor*) _GET_clearColor;
+ (org_xmlvm_iphone_UIColor*) _GET_lightTextColor;
+ (org_xmlvm_iphone_UIColor*) _GET_darkTextColor;
+ (org_xmlvm_iphone_UIColor*) _GET_groupTableViewBackgroundColor;
+ (org_xmlvm_iphone_UIColor*) _GET_viewFlipsideBackgroundColor;
+ (org_xmlvm_iphone_UIColor*) colorWithRGBA___float_float_float_float:(float)red :(float)green :(float)blue :(float)alpha;
+ (org_xmlvm_iphone_UIColor*) colorWithWhiteAlpha___float_float:(float) white :(float)alpha;
+ (org_xmlvm_iphone_UIColor*) colorWithHSBA___float_float_float_float:(float) hue :(float)saturation :(float)brightness :(float)alpha;
- (org_xmlvm_iphone_CGColor*) getCGColor__;
@end
