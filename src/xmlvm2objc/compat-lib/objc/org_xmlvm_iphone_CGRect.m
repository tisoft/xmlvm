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

#import "org_xmlvm_iphone_CGRect.h"


// CGRect
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGRect;

- (id) init
{
    [super init];
    origin = [[org_xmlvm_iphone_CGPoint alloc] init];
    size = [[org_xmlvm_iphone_CGSize alloc] init];
    return self;
}

- (void) dealloc
{
    [origin release];
    [size release];
    [super dealloc];
}

- (CGRect) getCGRect
{
    return CGRectMake(origin->x, origin->y, size->width, size->height);
}

- (void) __init_org_xmlvm_iphone_CGRect___float_float_float_float :(float)x :(float)y :(float)w :(float)h
{
    origin->x = x;
    origin->y = y;
    size->width = w;
    size->height = h;
}

- (void) __init_org_xmlvm_iphone_CGRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)other;
{
    origin->x = other->origin->x;
    origin->y = other->origin->y;
    size->width = other->size->width;
    size->height = other->size->height;
}

- (void) _PUT_origin: (org_xmlvm_iphone_CGPoint*) o
{
	[self->origin release];
	[o retain];
	self->origin = o;
}

- (org_xmlvm_iphone_CGPoint*) _GET_origin
{
	return self->origin;
}

- (void) _PUT_size: (org_xmlvm_iphone_CGSize*) s
{
	[self->size release];
	[s retain];
	self->size = s;
}

- (org_xmlvm_iphone_CGSize*) _GET_size
{
	return size;
}

+ (org_xmlvm_iphone_CGRect*) Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect
       :(org_xmlvm_iphone_CGRect*)r1 :(org_xmlvm_iphone_CGRect*)r2
{
    CGRect _r1 = [r1 getCGRect];
    CGRect _r2 = [r2 getCGRect];
    CGRect _r = CGRectIntersection(_r1, _r2);
    org_xmlvm_iphone_CGRect* r = [[org_xmlvm_iphone_CGRect alloc] init];
    r->origin->x = _r.origin.x;
    r->origin->y = _r.origin.y;
    r->size->width = _r.size.width;
    r->size->height = _r.size.height;
    return r;
}

+ (BOOL) IsNull___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)r
{
    CGRect rect = [r getCGRect];
    return CGRectIsNull(rect);
}

@end
