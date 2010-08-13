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


#include "xmlvm.h"
#include "java_lang_System.h"
#include "java_lang_Class.h"
#include <stdio.h>


XMLVM_JMP_BUF xmlvm_exception_env;
JAVA_OBJECT xmlvm_exception;

__CLASS_DEFINITION_XMLVMArray __CLASS_XMLVMArray;

__CLASS_DEFINITION_java_lang_Object_ARRAYTYPE __CLASS_java_lang_Object_ARRAYTYPE;
__CLASS_DEFINITION_boolean_ARRAYTYPE          __CLASS_boolean_ARRAYTYPE;
__CLASS_DEFINITION_byte_ARRAYTYPE             __CLASS_byte_ARRAYTYPE;
__CLASS_DEFINITION_char_ARRAYTYPE             __CLASS_char_ARRAYTYPE;
__CLASS_DEFINITION_short_ARRAYTYPE            __CLASS_short_ARRAYTYPE;
__CLASS_DEFINITION_int_ARRAYTYPE              __CLASS_int_ARRAYTYPE;
__CLASS_DEFINITION_long_ARRAYTYPE             __CLASS_long_ARRAYTYPE;
__CLASS_DEFINITION_float_ARRAYTYPE            __CLASS_float_ARRAYTYPE;
__CLASS_DEFINITION_double_ARRAYTYPE           __CLASS_double_ARRAYTYPE;


void __INIT_XMLVMArray()
{
	if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_XMLVMArray.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
	// Initialize vtable for XMLVMArray
	// TODO "1" below should be done via some #define
	__CLASS_XMLVMArray.vtable[1] = (VTABLE_PTR) XMLVMArray_clone__;
    // Initialize vtable for implementing interfaces
	// TODO Array do implement two interfaces
    __CLASS_XMLVMArray.numImplementedInterfaces = 0;
}

void xmlvm_init_system_class()
{
	//java_lang_System_initializeSystemClass__();
}

JAVA_OBJECT native_java_lang_Object_getClass__(JAVA_OBJECT me)
{
	return __NEW_XMLVMClass((__CLASS_DEFINITION_TEMPLATE*) ((java_lang_Object*) me)->__class);
}

JAVA_OBJECT native_java_lang_Class_getName__(JAVA_OBJECT me);

void xmlvm_init_java_lang_Object()
{
	__INIT_java_lang_Object();
	__CLASS_java_lang_Object.vtable[XMLVM_VTABLE_IDX_java_lang_Object_getClass__] =
	(VTABLE_PTR) native_java_lang_Object_getClass__;
}

void xmlvm_init_java_lang_Class()
{
	__INIT_java_lang_Class();
	__CLASS_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getName__] =
	(VTABLE_PTR) native_java_lang_Class_getName__;
}

void xmlvm_init()
{
	if (XMLVM_SETJMP(xmlvm_exception_env)) {
		XMLVM_ERROR("Unhandled exception thrown");
	}
	xmlvm_init_java_lang_Object();
	xmlvm_init_java_lang_Class();
	__INIT_XMLVMArray();
	__INIT_java_lang_System();
	xmlvm_init_system_class();
}

int XMLVM_ISA(JAVA_OBJECT obj, JAVA_OBJECT clazz)
{
	if (obj == JAVA_NULL) {
		return 0;
	}
	__CLASS_DEFINITION_TEMPLATE* objClass = (__CLASS_DEFINITION_TEMPLATE*) ((java_lang_Object*) obj)->__class;
	__CLASS_DEFINITION_TEMPLATE* cl = (__CLASS_DEFINITION_TEMPLATE*) clazz;
	while (objClass != JAVA_NULL) {
		if (strcmp(objClass->className, cl->className) == 0) {
			return 1;
		}
		// Check all implemented interfaces
		int i;
		for (i = 0; i < objClass->numImplementedInterfaces; i++) {
			if (strcmp(objClass->implementedInterfaces[0][i]->className, cl->className) == 0) {
				return 1;
			}
		}
		objClass = objClass->extends;
	}
	return 0;
}

VTABLE_PTR XMLVM_LOOKUP_INTERFACE_METHOD(JAVA_OBJECT me, const char* ifaceName, int vtableIndex)
{
    __CLASS_DEFINITION_TEMPLATE* clazz = (__CLASS_DEFINITION_TEMPLATE*) ((java_lang_Object*) me)->__class;
    int numInterfaces = clazz->numImplementedInterfaces;
	int i;
	for (i = 0; i < numInterfaces; i++) {
		__CLASS_DEFINITION_TEMPLATE* (*ifaces)[1] = clazz->implementedInterfaces;
		__CLASS_DEFINITION_TEMPLATE* iface = (*ifaces)[i];
		if (strcmp(ifaceName, iface->className) == 0) {
			return iface->vtable[vtableIndex];
		}
	}
	XMLVM_ERROR("XMLVM_LOOKUP_INTERFACE_METHOD() could not find interface");
	return (VTABLE_PTR) 0;
}

//---------------------------------------------------------------------------------------------
// XMLVMClass


XMLVM_DEFINE_CLASS(XMLVMClass, XMLVM_VTABLE_SIZE_java_lang_Class)

#define __INSTANCE_MEMBERS_XMLVMClass \
__INSTANCE_MEMBERS_java_lang_Class; \
struct { \
__CLASS_DEFINITION_TEMPLATE* clazz; \
} XMLVMClass

struct XMLVMClass {
    __CLASS_DEFINITION_XMLVMClass* __class;
    __INSTANCE_MEMBERS_XMLVMClass;
};

typedef struct XMLVMClass XMLVMClass;

__CLASS_DEFINITION_XMLVMClass __CLASS_XMLVMClass = {
    0, // classInitialized
    "XMLVMClass", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Class, // extends
};

void __INIT_XMLVMClass()
{
    __CLASS_XMLVMClass.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Class.classInitialized) __INIT_java_lang_Class();
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_XMLVMClass.vtable, __CLASS_java_lang_Class.vtable, sizeof(__CLASS_java_lang_Class.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_XMLVMClass.numImplementedInterfaces = 0;
}

JAVA_OBJECT __NEW_XMLVMClass(__CLASS_DEFINITION_TEMPLATE* clazz)
{
    if (!__CLASS_XMLVMClass.classInitialized) __INIT_XMLVMClass();
    XMLVMClass* me = (XMLVMClass*) XMLVM_MALLOC(sizeof(XMLVMClass));
    me->__class = &__CLASS_XMLVMClass;
	me->XMLVMClass.clazz = clazz;
    return me;
}

JAVA_OBJECT native_java_lang_Class_getName__(JAVA_OBJECT me)
{
	XMLVMClass* clazz = (XMLVMClass*) me;
	java_lang_String* name = __NEW_java_lang_String();
    java_lang_String___INIT____char_ARRAYTYPE(name, XMLVMArray_createFromString(clazz->XMLVMClass.clazz->className));
	return name;
}


//---------------------------------------------------------------------------------------------
// XMLVMArray

XMLVMArray* __NEW_XMLVMArray()
{
	XMLVMArray* array = (XMLVMArray*) XMLVM_MALLOC(sizeof(XMLVMArray));
	array->__class = &__CLASS_XMLVMArray;
	return array;
}

void __DELETE_XMLVMArray(XMLVMArray* me)
{
/*
    if (type == 0) {
        for (int i = 0; i < length; i++) {
            array.o[i]->__release();
        }
    }
*/
	if (me->ownsData) {
        XMLVM_FREE(me->array.data);
	}
	XMLVM_FREE(me);
}

XMLVMArray* XMLVMArray_createSingleDimension(int type, int size)
{
    XMLVMArray *retval = __NEW_XMLVMArray();
    retval->type = type;
    retval->length = size;
    retval->ownsData = 1;

    int sizeOfBaseType = XMLVMArray_sizeOfBaseTypeInBytes(type);
    retval->array.data = XMLVM_MALLOC(sizeOfBaseType * size);
    XMLVM_BZERO(retval->array.data, sizeOfBaseType * size);

    if (type == 0) {
		int i;
        for (i = 0; i < size; i++) {
            retval->array.o[i] = JAVA_NULL;
        }
    }

    return retval;
}

XMLVMArray* XMLVMArray_createSingleDimensionWithData(int type, int size, void* data)
{
    XMLVMArray *retval = __NEW_XMLVMArray();
    retval->type = type;
    retval->length = size;
    retval->array.data = data;
    retval->ownsData = 0;
    return retval;
}

XMLVMArray* XMLVMArray_createMultiDimensions(int type, XMLVMElem* dim, int count)
{
	int dimensions = dim->i;
	dim++;
	count--;
	if (count == 0) {
		return XMLVMArray_createSingleDimension(type, dimensions);
	}
	XMLVMArray* slice = XMLVMArray_createSingleDimension(0, dimensions);
	int i;
	for (i = 0; i < dimensions; i++) {
		XMLVMArray* o = XMLVMArray_createMultiDimensions(type, dim, count);
		XMLVMArray_replaceObjectAtIndex(slice, i, o);
	}
	return slice;
}

XMLVMArray* XMLVMArray_createFromString(const char* str)
{
    XMLVMArray *retval = __NEW_XMLVMArray();
    retval->type = 2; // CHAR
	int len = strlen(str);
    retval->length = len;
    retval->array.data = XMLVM_MALLOC(len);
	int i;
	for (i = 0; i < len; i++) {
		retval->array.c[i] = *str++;
	}
    retval->ownsData = 1;
    return retval;
}

void XMLVMArray_fillArray(XMLVMArray* array, void* data)
{
    int sizeOfBaseType = XMLVMArray_sizeOfBaseTypeInBytes(array->type);
    int n = sizeOfBaseType * array->length;
    XMLVM_MEMCPY(array->array.data, data, n);
}

int XMLVMArray_sizeOfBaseTypeInBytes(int type)
{
	int sizeOfBaseType;
	
    // 'type' values are defined by vm:sizeOf in xmlvm2cpp.xsl
    switch (type) {
    case 1: // boolean
    case 3: // byte
       sizeOfBaseType = sizeof(JAVA_ARRAY_BYTE);
       break;
    case 2: // char
    case 4: // short
       sizeOfBaseType = sizeof(JAVA_ARRAY_SHORT);
       break;
    case 5: // int
       sizeOfBaseType = sizeof(JAVA_ARRAY_INT);
       break;
    case 6: // float
       sizeOfBaseType = sizeof(JAVA_ARRAY_FLOAT);
       break;
    case 7: // double
       sizeOfBaseType = sizeof(JAVA_ARRAY_DOUBLE);
       break;
    case 8: // long
       sizeOfBaseType = sizeof(JAVA_ARRAY_LONG);
       break;
    default: // object reference
       sizeOfBaseType = sizeof(void*);
       break;
    }
    
    return sizeOfBaseType;
}

JAVA_OBJECT XMLVMArray_objectAtIndex(XMLVMArray* array, int idx)
{
    return array->array.o[idx];
}

void XMLVMArray_replaceObjectAtIndex(XMLVMArray* array, int idx, JAVA_OBJECT obj)
{
    array->array.o[idx] = obj;
}

int XMLVMArray_count(XMLVMArray* array)
{
	return array->length;
}

XMLVMArray* XMLVMArray_clone__(XMLVMArray* array)
{
    XMLVMArray *retval = __NEW_XMLVMArray();
    retval->type = array->type;
    retval->length = array->length;
    retval->ownsData = 1;

    int sizeOfBaseType = XMLVMArray_sizeOfBaseTypeInBytes(array->type);
    int sizeOfArrayInBytes = sizeOfBaseType * array->length;
    retval->array.data = XMLVM_MALLOC(sizeOfArrayInBytes);

    if (array->type == 0) {
		int i;
        for (i = 0; i < array->length; i++) {
            //retval->array.o[i] = array.o[i]->__retain();
        }
    }
    else {
	    XMLVM_MEMCPY(retval->array.data, array->array.data, sizeOfArrayInBytes);
    }

    return retval;
}

void xmlvm_unimplemented_native_method()
{
	XMLVM_ERROR("Unimplemented native method");
}

void XMLVM_ERROR(const char* msg)
{
    printf("XMLVM Error: '%s'\n", msg);
	exit(-1);
}
