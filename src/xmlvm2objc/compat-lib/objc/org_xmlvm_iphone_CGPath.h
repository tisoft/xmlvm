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
#import "org_xmlvm_iphone_CGAffineTransform.h"

@interface org_xmlvm_iphone_CGPath : java_lang_Object {
@public CGPathRef path;
}
- (void) __init_org_xmlvm_iphone_CGPath__;
- (void) moveToPoint___org_xmlvm_iphone_CGAffineTransform_float_float :(org_xmlvm_iphone_CGAffineTransform*)n1 :(float)n2 :(float)n3;
- (void) addLineToPoint___org_xmlvm_iphone_CGAffineTransform_float_float :(org_xmlvm_iphone_CGAffineTransform*)n1 :(float)n2 :(float)n3;
- (void) addArch___org_xmlvm_iphone_CGAffineTransform_float_float_float_float_float_boolean :(org_xmlvm_iphone_CGAffineTransform*)n1 :(float)n2 :(float)n3 :(float)n4 :(float)n5 :(float)n6 :(bool)n7;
- (void) addCurveToPoint___org_xmlvm_iphone_CGAffineTransform_float_float_float_float_float_float :(org_xmlvm_iphone_CGAffineTransform*)n1 :(float)n2 :(float)n3 :(float)n4 :(float)n5 :(float)n6 :(float)n7;
- (void) addQuadCurveToPoint___org_xmlvm_iphone_CGAffineTransform_float_float_float_float :(org_xmlvm_iphone_CGAffineTransform*)n1 :(float)n2 :(float)n3 :(float)n4 :(float)n5;
- (void) closeSubpath__;

@end

