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

#import "java_util_Collections.h"
#import "java_util_Arrays.h"

@implementation java_util_Collections

//TODO Move the following to non-static [java_util_List toArray__]
+ (XMLVMArray*)toArray: (java_util_List*) list {
	XMLVMArray* a = [XMLVMArray createSingleDimensionWithType:0 andSize:[list size__]]; //Object array
	for (int i = 0; i < [list size__]; i++) {
		a->array.o[i] = [list get___int:i];
	}
	return a;
}

+ (void) sort___java_util_List: (java_util_List*) list {
	[java_util_Collections sort___java_util_List_java_util_Comparator:list:JAVA_NULL];
}

+ (void) sort___java_util_List_java_util_Comparator: (java_util_List*) list: (java_util_Comparator*) c {
	XMLVMArray* a = [java_util_Collections toArray:list];

	if (c == JAVA_NULL) {
		[java_util_Arrays sort___java_lang_Object_ARRAYTYPE:a];
	} else {
		[java_util_Arrays sort___java_lang_Object_ARRAYTYPE_java_util_Comparator:a:c];
	}
	for (int j = 0; j < [a count]; j++) {
		java_lang_Object* removedObj = [list set___int_java_lang_Object:j:a->array.o[j]];
		[removedObj release];
	}
}

@end
