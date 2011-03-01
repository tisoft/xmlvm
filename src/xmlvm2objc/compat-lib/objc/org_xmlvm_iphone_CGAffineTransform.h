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

// CGAffineTransform
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGAffineTransform : java_lang_Object {
@public CGAffineTransform transform;
}
+ (org_xmlvm_iphone_CGAffineTransform*) make___float_float_float_float_float_float :(float)n1 :(float)n2 :(float)n3 :(float)n4 :(float)n5 :(float)n6;
+ (org_xmlvm_iphone_CGAffineTransform*) makeRotation___float :(float)n1;
+ (org_xmlvm_iphone_CGAffineTransform*) makeScale___float_float :(float)n1 :(float)n2;
+ (org_xmlvm_iphone_CGAffineTransform*) makeTranslation___float_float :(float)n1 :(float)n2;
+ (org_xmlvm_iphone_CGAffineTransform*) rotate___org_xmlvm_iphone_CGAffineTransform_float :(org_xmlvm_iphone_CGAffineTransform*)n1 :(float)n2;
+ (org_xmlvm_iphone_CGAffineTransform*) scale___org_xmlvm_iphone_CGAffineTransform_float_float :(org_xmlvm_iphone_CGAffineTransform*)n1 :(float)n2 :(float)n3;
+ (org_xmlvm_iphone_CGAffineTransform*) translate___org_xmlvm_iphone_CGAffineTransform_float_float :(org_xmlvm_iphone_CGAffineTransform*)n1 :(float)n2 :(float)n3;
+ (org_xmlvm_iphone_CGAffineTransform*) concat___org_xmlvm_iphone_CGAffineTransform_org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)n1 :(org_xmlvm_iphone_CGAffineTransform*)n2;
+ (org_xmlvm_iphone_CGAffineTransform*) identity__;
@end
