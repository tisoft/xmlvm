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

#import "org_xmlvm_iphone_CGLayer.h"


// CGLayer
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGLayer;

+ (org_xmlvm_iphone_CGLayer*) createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGContext*)context :(org_xmlvm_iphone_CGSize*)size
{
	org_xmlvm_iphone_CGLayer *retval = [[org_xmlvm_iphone_CGLayer alloc] init];
	CGSize s = CGSizeMake(size->width, size->height);
	retval->layer = CGLayerCreateWithContext(context->context, s, NULL);
	
	return retval;
}

- (org_xmlvm_iphone_CGContext*) getContext__
{
	org_xmlvm_iphone_CGContext *context = [[org_xmlvm_iphone_CGContext alloc] init];
	context->context = CGLayerGetContext(layer);
	
	return context;
}

- (CGLayerRef) getCGLayer__
{
	return layer;
}

- (org_xmlvm_iphone_CGSize*) getSize__
{
    org_xmlvm_iphone_CGSize* s = [[org_xmlvm_iphone_CGSize alloc] init];
    CGSize size = CGLayerGetSize(layer);
    s->width = size.width;
    s->height = size.height;
    return s;
}

@end


