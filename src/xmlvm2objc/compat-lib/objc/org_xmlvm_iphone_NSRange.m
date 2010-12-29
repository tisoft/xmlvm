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

#import "org_xmlvm_iphone_NSRange.h"



@implementation org_xmlvm_iphone_NSRange;

- (void) __init_org_xmlvm_iphone_NSRange___int_int: (int)loc : (int) len
{
	self->location = loc;
	self->length = len;
}

- (org_xmlvm_iphone_NSRange*) initWithNSRange:(NSRange) range
{
	[self __init_org_xmlvm_iphone_NSRange___int_int:range.location :range.length];
	return self;
}

- (int) equals___java_lang_Object: (java_lang_Object*) o
{
	if (o == JAVA_NULL || ![o isKindOfClass: [org_xmlvm_iphone_NSRange class]]) {
		return 0;
	}
	org_xmlvm_iphone_NSRange* s = (org_xmlvm_iphone_NSRange*) o;
	return self->location == s->location && self->length == s->length;
}

- (NSString*) toString__ {
	return [[NSString alloc] initWithFormat:@"[Range %f, %f]", self->location, self->length];
}

@end

