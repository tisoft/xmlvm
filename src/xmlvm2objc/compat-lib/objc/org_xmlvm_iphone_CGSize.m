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

#import "org_xmlvm_iphone_CGSize.h"

// CGSize
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGSize;

- (org_xmlvm_iphone_CGSize*) initWithCGSize:(CGSize) size
{
	[self __init_org_xmlvm_iphone_CGSize___float_float:size.width :size.height];
	return self;
}

- (void) __init_org_xmlvm_iphone_CGSize___float_float: (float) w : (float) h {
	width_float = w;
	height_float = h;
}

- (CGSize) getCGSize
{
	return CGSizeMake(width_float, height_float);
}


- (int) equals___java_lang_Object: (java_lang_Object*) o
{
	if (o == JAVA_NULL || ![o isKindOfClass: [org_xmlvm_iphone_CGSize class]]) {
		return 0;
	}
		
	org_xmlvm_iphone_CGSize* s = (org_xmlvm_iphone_CGSize*) o;
	return self->width_float == s->width_float && self->height_float == s->height_float;
}

- (NSString*) toString__
{
	return [[NSString alloc] initWithFormat:@"[%f, %f]", self->width_float, self->height_float];
}

@end
