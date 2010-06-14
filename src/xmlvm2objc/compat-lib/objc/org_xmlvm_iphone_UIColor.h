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

#import "xmlvm.h"

@class org_xmlvm_iphone_UIImage;


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
@end
