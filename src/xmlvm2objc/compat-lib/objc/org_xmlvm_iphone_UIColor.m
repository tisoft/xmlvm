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

- (void) __init_org_xmlvm_iphone_UIImage__ :(org_xmlvm_iphone_UIImage*) image
{
	[self initWithPatternImage: image];
}

+ (org_xmlvm_iphone_UIColor *) _GET_blackColor
{ return [UIColor blackColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_darkGrayColor
{ return [UIColor darkGrayColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_lightGrayColor
{ return [UIColor lightGrayColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_whiteColor
{ return [UIColor whiteColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_grayColor
{ return [UIColor grayColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_redColor
{ return [UIColor redColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_greenColor
{ return [UIColor greenColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_blueColor
{ return [UIColor blueColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_cyanColor
{ return [UIColor cyanColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_yellowColor
{ return [UIColor yellowColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_magentaColor
{ return [UIColor magentaColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_orangeColor
{ return [UIColor orangeColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_purpleColor
{ return [UIColor purpleColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_brownColor
{ return [UIColor brownColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_clearColor
{ return [UIColor clearColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_lightTextColor
{ return [UIColor lightTextColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_darkTextColor
{ return [UIColor darkTextColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_groupTableViewBackgroundColor
{ return [UIColor groupTableViewBackgroundColor];}
+ (org_xmlvm_iphone_UIColor *) _GET_viewFlipsideBackgroundColor
{ return [UIColor viewFlipsideBackgroundColor];}


+ (org_xmlvm_iphone_UIColor*) colorWithRGBA___float_float_float_float:(float)red :(float)green :(float)blue :(float)alpha {
	return [[UIColor colorWithRed:red green:green blue:blue alpha:alpha] retain];
}

+ (org_xmlvm_iphone_UIColor*) colorWithWhiteAlpha___float_float:(float) white :(float)alpha {
    return [[UIColor colorWithWhite:white alpha:alpha] retain];
}

+ (org_xmlvm_iphone_UIColor*) colorWithHSBA___float_float_float_float:(float)hue :(float)saturation :(float)brightness :(float)alpha {
    return [[UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:alpha] retain];
}

@end
