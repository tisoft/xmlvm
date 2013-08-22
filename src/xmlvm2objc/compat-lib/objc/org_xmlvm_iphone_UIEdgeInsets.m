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




#import "org_xmlvm_iphone_UIEdgeInsets.h"


// CGRect
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIEdgeInsets;

- (org_xmlvm_iphone_UIEdgeInsets*) initWithUIEdgeInsets:(UIEdgeInsets) insets {
    [self __init_org_xmlvm_iphone_UIEdgeInsets___float_float_float_float:insets.top :insets.left :insets.bottom :insets.right];
    return self;
}


- (void) __init_org_xmlvm_iphone_UIEdgeInsets__ {
	top_float = 0;
	left_float = 0;
	bottom_float = 0;
	right_float = 0;
}

- (void) __init_org_xmlvm_iphone_UIEdgeInsets___float_float_float_float :(float)t :(float)l :(float)b :(float)r {
	top_float = t;
	left_float = l;
	bottom_float = b;
	right_float = r;
}	


- (UIEdgeInsets) getUIEdgeInsets
{
	return UIEdgeInsetsMake(top_float, left_float, bottom_float, right_float);
}


@end
