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

@interface org_xmlvm_iphone_CGRect : java_lang_Object {
@public org_xmlvm_iphone_CGPoint* origin_org_xmlvm_iphone_CGPoint;
@public org_xmlvm_iphone_CGSize* size_org_xmlvm_iphone_CGSize;
}
+ (id) alloc;
+ (org_xmlvm_iphone_CGRect*) Null__;
+ (org_xmlvm_iphone_CGRect*) Zero__;
+ (org_xmlvm_iphone_CGRect*) Infinite__;

- (void) dealloc;
- (org_xmlvm_iphone_CGRect*) initWithCGRect:(CGRect) rect;
- (CGRect) getCGRect;
- (void) __init_org_xmlvm_iphone_CGRect___float_float_float_float :(float)x :(float)y :(float)w :(float)h;
- (void) __init_org_xmlvm_iphone_CGRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)other;
- (BOOL) isNull__;
- (BOOL) isEmpty__;
- (BOOL) isInfinite__;
- (NSString*) toString__;
+ (org_xmlvm_iphone_CGRect*) Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect
       :(org_xmlvm_iphone_CGRect*)r1 :(org_xmlvm_iphone_CGRect*)r2;
@end
