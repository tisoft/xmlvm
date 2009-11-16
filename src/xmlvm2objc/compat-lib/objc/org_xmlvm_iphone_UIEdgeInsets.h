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

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGRect.h"


@interface org_xmlvm_iphone_UIEdgeInsets : java_lang_Object {
@public 
	float top;
	float left;
	float bottom;
	float right;
}

- (float) _GET_top;
- (void) _PUT_top: (float) t;
- (float) _GET_left;
- (void) _PUT_left: (float) l;
- (float) _GET_bottom;
- (void) _PUT_bottom: (float) b;
- (float) _GET_right;
- (void) _PUT_right: (float) r;

- (void) __init_org_xmlvm_iphone_UIEdgeInsets__;
- (void) __init_org_xmlvm_iphone_UIEdgeInsets___float_float_float_float :(float)t :(float)l :(float)b :(float)r;

- (UIEdgeInsets) getUIEdgeInsets;

@end
