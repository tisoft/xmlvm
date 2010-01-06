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

#import "java_lang_reflect_Array.h"
#import "java_lang_Boolean.h"
#import "java_lang_Character.h"
#import "java_lang_Integer.h"
#import "java_lang_Double.h"
#import "java_lang_RuntimeException.h"


// java.lang.reflect.Array
//----------------------------------------------------------------------------
@implementation java_lang_reflect_Array

+ (XMLVMArray*) newInstance___java_lang_Class_int_ARRAYTYPE:(java_lang_Class*)clazz :(XMLVMArray*)dimensions
{
	int baseTypeId = -1;

	if (clazz == [java_lang_Boolean _GET_TYPE]) {
		baseTypeId = 1;
	} else if (clazz == [java_lang_Character _GET_TYPE]) {
		baseTypeId = 2;
	} else if (clazz == [java_lang_Integer _GET_TYPE]) {
		baseTypeId = 5;
	} else if (clazz == [java_lang_Double _GET_TYPE]) {
		baseTypeId = 7;
	} else {
		baseTypeId = 0;
	}
	
	return [[XMLVMArray createMultiDimensionsWithType:baseTypeId dimensions:dimensions->array.data count:dimensions->length] retain];
}

@end
