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

#import "java_util_LinkedList.h"


// java.util.LinkedList
//----------------------------------------------------------------------------
@implementation NSMutableArray (cat_java_util_LinkedList)

- (void) __init_java_util_LinkedList__
{
}

- (java_lang_Object*) removeFirst__
{
	return [self remove__];
}

- (bool) offer___java_lang_Object:(java_lang_Object *) item
{
	[self addObject:item];
	return YES;
}

- (java_lang_Object*) peek__
{
	if ([self count]<1) {
		return [JAVA_NULL retain];
	}
	return [[self objectAtIndex:0] retain];
}

- (java_lang_Object*) poll__
{
	java_lang_Object *o = [self peek__];
	if (o != JAVA_NULL) {
		[self removeObjectAtIndex:0];
	}
	return o;
}

- (java_lang_Object*) element__
{
	// TODO should throw exception if list is empty
	return [self peek__];
}

- (java_lang_Object*) remove__
{
	// TODO should throw exception if list is empty
	return [self poll__];
}

@end
