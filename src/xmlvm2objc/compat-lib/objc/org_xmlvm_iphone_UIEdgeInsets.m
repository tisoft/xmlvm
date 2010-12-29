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

- (float) _GET_top
{
    return self->top;
}

- (void) _PUT_top: (float) t
{
    top = t;
}

- (float) _GET_left
{
    return left;
}

- (void) _PUT_left: (float) l
{
    left = l;
}

- (float) _GET_bottom
{
    return bottom;
}

- (void) _PUT_bottom: (float) b
{
    bottom = b;
}

- (float) _GET_right
{
    return right;
}

- (void) _PUT_right: (float) r
{
    right = r;
}



- (void) __init_org_xmlvm_iphone_UIEdgeInsets__ {
	top = 0;
	left = 0;
	bottom = 0;
	right = 0;
}

- (void) __init_org_xmlvm_iphone_UIEdgeInsets___float_float_float_float :(float)t :(float)l :(float)b :(float)r {
	top = t;
	left = l;
	bottom = b;
	right = r;
}	


- (UIEdgeInsets) getUIEdgeInsets
{
	return UIEdgeInsetsMake(top, left, bottom, right);
}


@end
