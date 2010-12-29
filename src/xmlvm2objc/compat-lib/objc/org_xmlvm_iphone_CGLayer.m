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

#import "org_xmlvm_iphone_CGLayer.h"


// CGLayer
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGLayer;

+ (org_xmlvm_iphone_CGLayer*) createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGContext*)context :(org_xmlvm_iphone_CGSize*)size
{
	org_xmlvm_iphone_CGLayer *retval = [[org_xmlvm_iphone_CGLayer alloc] init];
	CGSize s = CGSizeMake(size->width_float, size->height_float);
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
    return [[org_xmlvm_iphone_CGSize alloc] initWithCGSize:CGLayerGetSize(layer)];
}

@end


