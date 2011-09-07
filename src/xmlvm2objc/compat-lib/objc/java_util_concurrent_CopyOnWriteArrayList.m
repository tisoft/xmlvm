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

#import "java_util_ArrayList.h"
#import "java_lang_IllegalArgumentException.h"

@implementation NSMutableArray (cat_java_util_concurrent_CopyOnWriteArrayList)

- (void) __init_java_util_concurrent_CopyOnWriteArrayList__ {
	[self __init_java_util_concurrent_CopyOnWriteArrayList___int:10];
}

- (void) __init_java_util_concurrent_CopyOnWriteArrayList___int:(int)initialCapacity {
//TODO since "init" has already been called, we cannot "initWithCapacity"
//	if (initialCapacity < ) {
//		java_lang_IllegalArgumentException* ex = [[java_lang_IllegalArgumentException alloc] init];
//		[ex __init_java_lang_IllegalArgumentException___java_lang_String:[NSMutableString stringWithString:@"Illegal Capacity"]];
//		@throw ex;
//	}
//	this.elementData = [XMLVMArray createSingleDimensionWithType:0 andSize:initialCapacity]; //Object array
}

- (void) __init_java_util_concurrent_CopyOnWriteArrayList___java_util_Collection:(java_util_Collection*)c {
	[self addAll___java_util_Collection:c];
}

@end
