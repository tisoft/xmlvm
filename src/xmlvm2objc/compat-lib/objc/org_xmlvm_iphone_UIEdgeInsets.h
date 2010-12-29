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
