/*
 * Copyright (c) 2002-2011 by XMLVM.org
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

#include "xmlvm.h"
#include "java_lang_System.h"
#include "java_lang_Class.h"
#include "java_lang_String.h"
#include <stdio.h>
#include <string.h>


XMLVM_JMP_BUF xmlvm_exception_env;
JAVA_OBJECT xmlvm_exception;

__TIB_DEFINITION_XMLVMArray __TIB_XMLVMArray;

//TODO these are not initialized anywhere!
__TIB_DEFINITION_java_lang_Object_ARRAYTYPE __TIB_java_lang_Object_ARRAYTYPE;
__TIB_DEFINITION_boolean_ARRAYTYPE          __TIB_boolean_ARRAYTYPE;
__TIB_DEFINITION_byte_ARRAYTYPE             __TIB_byte_ARRAYTYPE;
__TIB_DEFINITION_char_ARRAYTYPE             __TIB_char_ARRAYTYPE;
__TIB_DEFINITION_short_ARRAYTYPE            __TIB_short_ARRAYTYPE;
__TIB_DEFINITION_int_ARRAYTYPE              __TIB_int_ARRAYTYPE;
__TIB_DEFINITION_long_ARRAYTYPE             __TIB_long_ARRAYTYPE;
__TIB_DEFINITION_float_ARRAYTYPE            __TIB_float_ARRAYTYPE;
__TIB_DEFINITION_double_ARRAYTYPE           __TIB_double_ARRAYTYPE;

//TODO these are not initialized anywhere!
JAVA_OBJECT __CLASS_boolean_ARRAYTYPE;
JAVA_OBJECT __CLASS_byte_ARRAYTYPE;
JAVA_OBJECT __CLASS_char_ARRAYTYPE;
JAVA_OBJECT __CLASS_short_ARRAYTYPE;
JAVA_OBJECT __CLASS_int_ARRAYTYPE;
JAVA_OBJECT __CLASS_long_ARRAYTYPE;
JAVA_OBJECT __CLASS_float_ARRAYTYPE;
JAVA_OBJECT __CLASS_double_ARRAYTYPE;

//TODO Needed for java_lang_CharacterData00.c. Needs to be initialized.
JAVA_OBJECT __CLASS_char_ARRAYTYPE_ARRAYTYPE_ARRAYTYPE;
//TODO Needed for java_math_BigDecimal.c. Needs to be initialized.
JAVA_OBJECT __CLASS_long_ARRAYTYPE_ARRAYTYPE;


void __INIT_XMLVMArray()
{
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_XMLVMArray.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for XMLVMArray
    // TODO "1" below should be done via some #define
    __TIB_XMLVMArray.vtable[XMLVM_VTABLE_IDX_java_lang_Object_clone__] = (VTABLE_PTR) XMLVMArray_clone__;
    // Initialize vtable for implementing interfaces
    // TODO Array do implement two interfaces
    __TIB_XMLVMArray.numImplementedInterfaces = 0;
    //TODO
    __TIB_XMLVMArray.clazz = JAVA_NULL;
    __TIB_XMLVMArray.declaredFields = JAVA_NULL;
    __TIB_XMLVMArray.numDeclaredFields = 0;
    
    
}

void xmlvm_init_system_class()
{
    //java_lang_System_initializeSystemClass__();
}

void xmlvm_init()
{
#ifndef XMLVM_NO_GC
#ifdef DEBUG
    setenv("GC_PRINT_STATS", "1", 1);
#endif
    GC_INIT();
#endif
    
    if (XMLVM_SETJMP(xmlvm_exception_env)) {
        XMLVM_ERROR("Unhandled exception thrown", __FILE__, __FUNCTION__, __LINE__);
    }
    __INIT_XMLVMArray();
    __INIT_java_lang_System();
    xmlvm_init_system_class();
    org_xmlvm_util_XMLVMUtil_init__();
}

int XMLVM_ISA(JAVA_OBJECT obj, JAVA_OBJECT clazz)
{
    int i;
    __TIB_DEFINITION_TEMPLATE* objClass;
    __TIB_DEFINITION_TEMPLATE* cl;
    if (obj == JAVA_NULL) {
        return 0;
    }
    objClass = (__TIB_DEFINITION_TEMPLATE*) ((java_lang_Object*) obj)->tib;
    cl = (__TIB_DEFINITION_TEMPLATE*) clazz;
    while (objClass != JAVA_NULL) {
        if (strcmp(objClass->className, cl->className) == 0) {
            return 1;
        }
        // Check all implemented interfaces
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
    __TIB_DEFINITION_TEMPLATE* clazz = (__TIB_DEFINITION_TEMPLATE*) ((java_lang_Object*) me)->tib;
    int numInterfaces = clazz->numImplementedInterfaces;
    int i;
    for (i = 0; i < numInterfaces; i++) {
        __TIB_DEFINITION_TEMPLATE* (*ifaces)[1] = clazz->implementedInterfaces;
        __TIB_DEFINITION_TEMPLATE* iface = (*ifaces)[i];
        if (strcmp(ifaceName, iface->className) == 0) {
            return iface->vtable[vtableIndex];
        }
    }
    XMLVM_ERROR("XMLVM_LOOKUP_INTERFACE_METHOD() could not find interface", __FILE__, __FUNCTION__, __LINE__);
    return (VTABLE_PTR) 0;
}

int xmlvm_java_string_cmp(JAVA_OBJECT* s1, const char* s2)
{
    java_lang_String* str = (java_lang_String*) s1;
    JAVA_INT len = str->fields.java_lang_String.count_;
    if (len != strlen(s2)) {
        return 0;
    }
    JAVA_INT offset = str->fields.java_lang_String.offset_;
    XMLVMArray* value = (XMLVMArray*) str->fields.java_lang_String.value_;
    for (int i = 0; i < len; i++) {
        if (value->array.c[i + offset] != s2[i]) {
            return 0;
        }
    }
    return 1;
}

JAVA_OBJECT xmlvm_create_java_string(const char* s)
{
    java_lang_String* str = __NEW_java_lang_String();
    XMLVMArray* charArray = XMLVMArray_createFromString(s);
    java_lang_String___INIT____char_ARRAYTYPE(str, charArray);
    return str;
}

//---------------------------------------------------------------------------------------------
// XMLVMClass


XMLVM_DEFINE_CLASS(XMLVMClass, XMLVM_VTABLE_SIZE_java_lang_Class)

#define __INSTANCE_FIELDS_XMLVMClass \
    __INSTANCE_FIELDS_java_lang_Class; \
    struct { \
        __TIB_DEFINITION_TEMPLATE* tib; \
        JAVA_BOOLEAN               isArray; \
        JAVA_BOOLEAN               isPrimitive; \
    } XMLVMClass

struct XMLVMClass {
    __TIB_DEFINITION_XMLVMClass* tib;
    struct {
        __INSTANCE_FIELDS_XMLVMClass;
    } fields;
};

typedef struct XMLVMClass XMLVMClass;


__TIB_DEFINITION_XMLVMClass __TIB_XMLVMClass = {
    0, // classInitialized
    "XMLVMClass", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Class, // extends
};

__TIB_DEFINITION_TEMPLATE* XMLVMClass_getTIB(JAVA_OBJECT clazz)
{
    XMLVMClass* c = (XMLVMClass*) clazz;
    return c->fields.XMLVMClass.tib;
}

JAVA_BOOLEAN XMLVMClass_isArray(JAVA_OBJECT clazz)
{
    XMLVMClass* c = (XMLVMClass*) clazz;
    return c->fields.XMLVMClass.isArray;
}

JAVA_BOOLEAN XMLVMClass_isPrimitive(JAVA_OBJECT clazz)
{
    XMLVMClass* c = (XMLVMClass*) clazz;
    return c->fields.XMLVMClass.isPrimitive;
}

void XMLVMClass_setPrimitive(JAVA_OBJECT clazz, JAVA_BOOLEAN flag)
{
    XMLVMClass* c = (XMLVMClass*) clazz;
    c->fields.XMLVMClass.isPrimitive = flag;
}

JAVA_OBJECT XMLVMClass_newInstance(JAVA_OBJECT me)
{
    XMLVMClass* clazz = (XMLVMClass*) me;
    return (*(clazz->fields.XMLVMClass.tib->newInstanceFunc))();
}

void __INIT_XMLVMClass()
{
    __TIB_XMLVMClass.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Class.classInitialized) __INIT_java_lang_Class();
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_XMLVMClass.vtable, __TIB_java_lang_Class.vtable, sizeof(__TIB_java_lang_Class.vtable));
    // Initialize vtable for this class
    __TIB_XMLVMClass.vtable[XMLVM_VTABLE_IDX_java_lang_Class_newInstance__] = (VTABLE_PTR) XMLVMClass_newInstance;
    // Initialize vtable for implementing interfaces
    __TIB_XMLVMClass.numImplementedInterfaces = 0;
}

JAVA_OBJECT __NEW_XMLVMClass(/*__TIB_DEFINITION_TEMPLATE*/ void* clazz)
{
    XMLVMClass* me;
    if (!__TIB_XMLVMClass.classInitialized) __INIT_XMLVMClass();
    __TIB_DEFINITION_TEMPLATE* c = (__TIB_DEFINITION_TEMPLATE*) clazz;
    me = (XMLVMClass*) XMLVM_MALLOC(sizeof(XMLVMClass));
    me->tib = &__TIB_XMLVMClass;
    me->fields.XMLVMClass.tib = c;
    me->fields.XMLVMClass.isArray = 0;
    me->fields.XMLVMClass.isPrimitive = 0;
    return me;
}


//---------------------------------------------------------------------------------------------
// XMLVMArray

XMLVMArray* __NEW_XMLVMArray()
{
    XMLVMArray* array = (XMLVMArray*) XMLVM_MALLOC(sizeof(XMLVMArray));
    array->tib = &__TIB_XMLVMArray;
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
    int sizeOfBaseType;
    retval->type = type;
    retval->length = size;
    retval->ownsData = 1;

    sizeOfBaseType = XMLVMArray_sizeOfBaseTypeInBytes(type);
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
    XMLVMArray* slice;
    int i;
    dim++;
    count--;
    if (count == 0) {
        return XMLVMArray_createSingleDimension(type, dimensions);
    }
    slice = XMLVMArray_createSingleDimension(0, dimensions);

    for (i = 0; i < dimensions; i++) {
        XMLVMArray* o = XMLVMArray_createMultiDimensions(type, dim, count);
        XMLVMArray_replaceObjectAtIndex(slice, i, o);
    }
    return slice;
}

XMLVMArray* XMLVMArray_createFromString(const char* str)
{
    XMLVMArray *retval = __NEW_XMLVMArray();
    int len = strlen(str);
    int i;

    retval->type = 2; // CHAR
    retval->length = len;
    retval->array.data = XMLVM_MALLOC(len * sizeof(JAVA_ARRAY_CHAR));
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
    int sizeOfBaseType;
    int sizeOfArrayInBytes;
    retval->type = array->type;
    retval->length = array->length;
    retval->ownsData = 1;

    sizeOfBaseType = XMLVMArray_sizeOfBaseTypeInBytes(array->type);
    sizeOfArrayInBytes = sizeOfBaseType * array->length;
    retval->array.data = XMLVM_MALLOC(sizeOfArrayInBytes);

    XMLVM_MEMCPY(retval->array.data, array->array.data, sizeOfArrayInBytes);

    return retval;
}

void xmlvm_unimplemented_native_method()
{
    XMLVM_ERROR("Unimplemented native method", __FILE__, __FUNCTION__, __LINE__);
}

void XMLVM_ERROR(const char* msg, const char* file, const char* function, int line)
{
    printf("XMLVM Error: %s: (%s):%s:%d\n", msg, function, file, line);
    exit(-1);
}

