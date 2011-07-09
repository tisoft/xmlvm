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

#import "org_xmlvm_iphone_CGAffineTransform.h"



// CGAffineTransform
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGAffineTransform;

+ (org_xmlvm_iphone_CGAffineTransform*) make___float_float_float_float_float_float :(float)a :(float)b :(float)c :(float)d :(float)tx :(float)ty
{
    return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformMake(a, b, c, d, tx, ty)];
}

+ (org_xmlvm_iphone_CGAffineTransform*) makeRotation___float: (float) alpha
{
    return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformMakeRotation(alpha)];
}

+ (org_xmlvm_iphone_CGAffineTransform*) makeScale___float_float: (float) tx :(float)ty {
    return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformMakeScale(tx, ty)];
}

+ (org_xmlvm_iphone_CGAffineTransform*) makeTranslation___float_float :(float)n1 :(float)n2
{
    return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformMakeTranslation(n1, n2)];
}

+ (org_xmlvm_iphone_CGAffineTransform*) rotate___org_xmlvm_iphone_CGAffineTransform_float:(org_xmlvm_iphone_CGAffineTransform *)transf :(float)alpha {
	return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformRotate(transf->transform, alpha)];
}

+ (org_xmlvm_iphone_CGAffineTransform*) scale___org_xmlvm_iphone_CGAffineTransform_float_float :(org_xmlvm_iphone_CGAffineTransform*)transf :(float)n1 :(float)n2
{
	return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformScale(transf->transform, n1, n2)];
}

+ (org_xmlvm_iphone_CGAffineTransform*) translate___org_xmlvm_iphone_CGAffineTransform_float_float:(org_xmlvm_iphone_CGAffineTransform *)transf :(float)tx :(float)ty {
	return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformTranslate(transf->transform, tx, ty)];
}

+ (org_xmlvm_iphone_CGAffineTransform*) concat___org_xmlvm_iphone_CGAffineTransform_org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)n1 :(org_xmlvm_iphone_CGAffineTransform*)n2
{
	return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformConcat(n1->transform, n2->transform)];
}

+ (org_xmlvm_iphone_CGAffineTransform*) identity__
{
	return [[org_xmlvm_iphone_CGAffineTransform alloc] initWithTransform:CGAffineTransformIdentity];
}

- (org_xmlvm_iphone_CGAffineTransform *) initWithTransform:(CGAffineTransform) transf {
    self->transform = transf;
    return self;
}

@end
