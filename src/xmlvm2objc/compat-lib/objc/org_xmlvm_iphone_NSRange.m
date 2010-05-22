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

#import "org_xmlvm_iphone_NSRange.h"

/** @author teras */

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

