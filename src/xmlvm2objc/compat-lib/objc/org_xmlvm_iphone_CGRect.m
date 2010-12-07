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

+ (id) alloc
{
	org_xmlvm_iphone_CGRect * this = [super alloc];
    this->origin_org_xmlvm_iphone_CGPoint = [org_xmlvm_iphone_CGPoint alloc];
    this->size_org_xmlvm_iphone_CGSize = [org_xmlvm_iphone_CGSize alloc];
	return this;
}

+ (org_xmlvm_iphone_CGRect*) Null__
{
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:CGRectNull];
}

+ (org_xmlvm_iphone_CGRect*) Zero__
{
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:CGRectZero];
}

+ (org_xmlvm_iphone_CGRect*) Infinite__
{
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:CGRectInfinite];
}

- (void) dealloc
{
    [origin_org_xmlvm_iphone_CGPoint release];
    [size_org_xmlvm_iphone_CGSize release];
    [super dealloc];
}

- (org_xmlvm_iphone_CGRect*) initWithCGRect:(CGRect) rect
{
	[self __init_org_xmlvm_iphone_CGRect___float_float_float_float: 
			rect.origin.x :rect.origin.y :rect.size.width : rect.size.height];
	return self;
}

- (CGRect) getCGRect
{
    return CGRectMake(origin_org_xmlvm_iphone_CGPoint->x_float,
					  origin_org_xmlvm_iphone_CGPoint->y_float,
					  size_org_xmlvm_iphone_CGSize->width_float,
					  size_org_xmlvm_iphone_CGSize->height_float);
}

- (void) __init_org_xmlvm_iphone_CGRect___float_float_float_float :(float)x :(float)y :(float)w :(float)h
{
    origin_org_xmlvm_iphone_CGPoint->x_float = x;
    origin_org_xmlvm_iphone_CGPoint->y_float = y;
    size_org_xmlvm_iphone_CGSize->width_float = w;
    size_org_xmlvm_iphone_CGSize->height_float = h;
}

- (void) __init_org_xmlvm_iphone_CGRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)other;
{
    origin_org_xmlvm_iphone_CGPoint->x_float = other->origin_org_xmlvm_iphone_CGPoint->x_float;
    origin_org_xmlvm_iphone_CGPoint->y_float = other->origin_org_xmlvm_iphone_CGPoint->y_float;
    size_org_xmlvm_iphone_CGSize->width_float = other->size_org_xmlvm_iphone_CGSize->width_float;
    size_org_xmlvm_iphone_CGSize->height_float = other->size_org_xmlvm_iphone_CGSize->height_float;
}

- (BOOL) isNull__
{
    CGRect rect = [self getCGRect];
    return CGRectIsNull(rect);
}

- (BOOL) isEmpty__
{
    CGRect rect = [self getCGRect];
    return CGRectIsEmpty(rect);
}

- (BOOL) isInfinite__
{
    CGRect rect = [self getCGRect];
    return CGRectIsInfinite(rect);
}

- (NSString*) toString__
{
	NSString * cgP = [origin_org_xmlvm_iphone_CGPoint toString__];
	NSString * cgS = [size_org_xmlvm_iphone_CGSize toString__];
	NSString* res = [[NSString alloc] initWithFormat:@"[%@%@]", cgP, cgS];
	[cgP release];
	[cgS release];
	return res;
}

+ (org_xmlvm_iphone_CGRect*) Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect
       :(org_xmlvm_iphone_CGRect*)r1 :(org_xmlvm_iphone_CGRect*)r2
{
    CGRect _r1 = [r1 getCGRect];
    CGRect _r2 = [r2 getCGRect];
    CGRect _r = CGRectIntersection(_r1, _r2);
    org_xmlvm_iphone_CGRect* r = [[org_xmlvm_iphone_CGRect alloc] init];
    r->origin_org_xmlvm_iphone_CGPoint->x_float = _r.origin.x;
    r->origin_org_xmlvm_iphone_CGPoint->y_float = _r.origin.y;
    r->size_org_xmlvm_iphone_CGSize->width_float = _r.size.width;
    r->size_org_xmlvm_iphone_CGSize->height_float = _r.size.height;
    return r;
}

@end
