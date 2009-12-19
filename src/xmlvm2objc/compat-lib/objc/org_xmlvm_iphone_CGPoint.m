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

#import "org_xmlvm_iphone_CGPoint.h"

// CGPoint
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGPoint;

- (void) __init_org_xmlvm_iphone_CGPoint___float_float:(float) x_ :(float) y_
{
	self->x = x_;
	self->y = y_;
}

- (void) _PUT_x: (float) x_
{
	self->x = x_;
}

- (float) _GET_x
{
	return self->x;
}

- (void) _PUT_y: (float) y_
{
	self->y = y_;
}

- (float) _GET_y
{
	return self->y;
}

@end