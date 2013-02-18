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

#import "org_xmlvm_iphone_CGPoint.h"

// CGPoint
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGPoint;

- (org_xmlvm_iphone_CGPoint*) initWithCGPoint:(CGPoint) point
{
	[self __init_org_xmlvm_iphone_CGPoint___float_float: point.x :point.y];
	return self;
}

- (void) __init_org_xmlvm_iphone_CGPoint___org_xmlvm_iphone_CGPoint:(org_xmlvm_iphone_CGPoint *) other
{
    [self __init_org_xmlvm_iphone_CGPoint___float_float:other->x_float :other->y_float];
}

- (CGPoint) getCGPoint
{
	return CGPointMake(x_float, y_float);
}

- (void) __init_org_xmlvm_iphone_CGPoint___float_float:(float) x_ :(float) y_
{
	self->x_float = x_;
	self->y_float = y_;
}

- (NSString*) toString__
{
	NSString* res = [[NSString alloc] initWithFormat:@"[%f, %f]", self->x_float, self->y_float];
	return res;
}

@end
