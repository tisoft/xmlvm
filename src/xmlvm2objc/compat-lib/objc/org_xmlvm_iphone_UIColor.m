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


/** @author teras */

#import "org_xmlvm_iphone_UIColor.h"
#import "org_xmlvm_iphone_UIImage.h"

// UIColor
//----------------------------------------------------------------------------
@implementation UIColor (cat_org_xmlvm_iphone_UIColor)

+ (org_xmlvm_iphone_UIColor*) colorWithPatternImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*) image
{
	return_XMLVM_SELECTOR(UIColor colorWithPatternImage: image)
}

+ (org_xmlvm_iphone_UIColor *) _GET_blackColor
	{ return_XMLVM_SELECTOR(UIColor blackColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_darkGrayColor
	{ return_XMLVM_SELECTOR(UIColor darkGrayColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_lightGrayColor
	{ return_XMLVM_SELECTOR(UIColor lightGrayColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_whiteColor
	{ return_XMLVM_SELECTOR(UIColor whiteColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_grayColor
	{ return_XMLVM_SELECTOR(UIColor grayColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_redColor
	{ return_XMLVM_SELECTOR(UIColor redColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_greenColor
	{ return_XMLVM_SELECTOR(UIColor greenColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_blueColor
	{ return_XMLVM_SELECTOR(UIColor blueColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_cyanColor
	{ return_XMLVM_SELECTOR(UIColor cyanColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_yellowColor
	{ return_XMLVM_SELECTOR(UIColor yellowColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_magentaColor
	{ return_XMLVM_SELECTOR(UIColor magentaColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_orangeColor
	{ return_XMLVM_SELECTOR(UIColor orangeColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_purpleColor
	{ return_XMLVM_SELECTOR(UIColor purpleColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_brownColor
	{ return_XMLVM_SELECTOR(UIColor brownColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_clearColor
	{ return_XMLVM_SELECTOR(UIColor clearColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_lightTextColor
	{ return_XMLVM_SELECTOR(UIColor lightTextColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_darkTextColor
	{ return_XMLVM_SELECTOR(UIColor darkTextColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_groupTableViewBackgroundColor
	{ return_XMLVM_SELECTOR(UIColor groupTableViewBackgroundColor)}
+ (org_xmlvm_iphone_UIColor *) _GET_viewFlipsideBackgroundColor
	{ return_XMLVM_SELECTOR(UIColor viewFlipsideBackgroundColor)}


+ (org_xmlvm_iphone_UIColor*) colorWithRGBA___float_float_float_float:(float)red :(float)green :(float)blue :(float)alpha {
	return_XMLVM_SELECTOR(UIColor colorWithRed:red green:green blue:blue alpha:alpha);
}

+ (org_xmlvm_iphone_UIColor*) colorWithWhiteAlpha___float_float:(float) white :(float)alpha {
    return_XMLVM_SELECTOR(UIColor colorWithWhite:white alpha:alpha);
}

+ (org_xmlvm_iphone_UIColor*) colorWithHSBA___float_float_float_float:(float)hue :(float)saturation :(float)brightness :(float)alpha {
    return_XMLVM_SELECTOR(UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:alpha);
}

@end
