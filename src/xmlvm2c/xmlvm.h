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

#ifndef __XMLVM_H__
#define __XMLVM_H__


//#import <math.h>
#include <stdlib.h>
#include <strings.h>
#include <setjmp.h>


#define XMLVM_MALLOC(size) malloc(size)
#define XMLVM_FREE(pointer) free(pointer)
#define XMLVM_BZERO(pointer, size) bzero(pointer, size)
#define XMLVM_MEMCPY(dest, src, size) memcpy(dest, src, size)

#define XMLVM_FORWARD_DECL(class) \
    JAVA_OBJECT __NEW_ ##class(); \
    struct class; \
    typedef struct class class;


void xmlvm_init();


typedef void   JAVA_VOID;
typedef int    JAVA_BOOLEAN;
typedef int    JAVA_CHAR;
typedef int    JAVA_BYTE;
typedef int    JAVA_SHORT;
typedef int    JAVA_INT;
typedef long   JAVA_LONG;
typedef float  JAVA_FLOAT;
typedef double JAVA_DOUBLE;
typedef void*  JAVA_OBJECT;

//TODO which values should we use for Double.INFINITY?
#define Infinity 0
#define NaN 0

typedef char              JAVA_ARRAY_BYTE;
typedef unsigned short    JAVA_ARRAY_CHAR;
typedef short             JAVA_ARRAY_SHORT;
typedef int               JAVA_ARRAY_INT;
typedef long              JAVA_ARRAY_LONG;
typedef float             JAVA_ARRAY_FLOAT;
typedef double            JAVA_ARRAY_DOUBLE;
typedef JAVA_OBJECT       JAVA_ARRAY_OBJECT;


typedef union {
    JAVA_OBJECT  o;
    JAVA_INT     i;
    JAVA_FLOAT   f;
    JAVA_DOUBLE  d;
    JAVA_LONG    l;
} XMLVMElem;

typedef union {
    JAVA_ARRAY_OBJECT* o;
    JAVA_ARRAY_BYTE*   b;
    JAVA_ARRAY_CHAR*   c;
    JAVA_ARRAY_SHORT*  s;
    JAVA_ARRAY_INT*    i;
    JAVA_ARRAY_FLOAT*  f;
    JAVA_ARRAY_DOUBLE* d;
    JAVA_ARRAY_LONG*   l;
    void*              data;
} XMLVMElemPtr;

#define JAVA_NULL ((JAVA_OBJECT) 0)

typedef void (*VTABLE_PTR)();

#define XMLVM_DEFINE_CLASS(name, vtableSize) \
typedef struct __CLASS_DEFINITION_##name { \
    int                                 classInitialized; \
    const char*                         className; \
    struct __CLASS_DEFINITION_TEMPLATE* extends; \
	int                                 numInterfaces; \
    struct __CLASS_DEFINITION_TEMPLATE* (*interfaces)[1]; \
	int                                 numImplementedInterfaces; \
    struct __CLASS_DEFINITION_TEMPLATE* (*implementedInterfaces)[1]; \
    VTABLE_PTR                          vtable[vtableSize]; \
} __CLASS_DEFINITION_##name; \
\
extern __CLASS_DEFINITION_##name __CLASS_##name;

XMLVM_DEFINE_CLASS(TEMPLATE, 0)

int XMLVM_ISA(JAVA_OBJECT obj, JAVA_OBJECT clazz);
VTABLE_PTR XMLVM_LOOKUP_INTERFACE_METHOD(JAVA_OBJECT me, const char* ifaceName, int vtableIndex);

#define XMLVM_SIZE_OF_OBJECT_VTABLE 11

//---------------------------------------------------------------------------------------------
// XMLVMClass

JAVA_OBJECT __NEW_XMLVMClass(__CLASS_DEFINITION_TEMPLATE* clazz);



//---------------------------------------------------------------------------------------------
// XMLVMArray


XMLVM_DEFINE_CLASS(XMLVMArray, XMLVM_SIZE_OF_OBJECT_VTABLE)

typedef struct {
	__CLASS_DEFINITION_XMLVMArray* __class;
    XMLVMElemPtr                   array;
    int                            type;
    int                            length;
    int                            ownsData;
} XMLVMArray;

void __DELETE_XMLVMArray(XMLVMArray* me);
XMLVMArray* XMLVMArray_createSingleDimension(int type, int size);
XMLVMArray* XMLVMArray_createSingleDimensionWithData(int type, int size, void* data);
XMLVMArray* XMLVMArray_createMultiDimensions(int type, XMLVMElem* dimensions, int count);
XMLVMArray* XMLVMArray_createFromString(const char* str);
void XMLVMArray_fillArray(XMLVMArray* array, void* data);
int XMLVMArray_sizeOfBaseTypeInBytes(int type);
JAVA_OBJECT XMLVMArray_objectAtIndex(XMLVMArray* array, int idx);
void XMLVMArray_replaceObjectAtIndex(XMLVMArray* array, int idx, JAVA_OBJECT obj);
int XMLVMArray_count(XMLVMArray* array);
XMLVMArray* XMLVMArray_clone__(XMLVMArray* array);

XMLVM_DEFINE_CLASS(java_lang_Object_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(boolean_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(byte_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(char_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(short_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(int_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(long_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(float_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(double_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)


#define XMLVM_JMP_BUF jmp_buf
#define XMLVM_SETJMP(env) setjmp(env)
#define XMLVM_LONGJMP(env) longjmp(env, 0)

// TODO this won't work with multi-threading. Each thread needs its own xmlvm_exception_env
extern XMLVM_JMP_BUF xmlvm_exception_env;
// According to the documentation, the use of setjmp() is limited. In particular
// one should not use the return value of setjmp() in a context other than an if- or
// switch-statement. Because of this, we need to store the thrown exception in a global
// variable.
// TODO not thread safe!
extern JAVA_OBJECT xmlvm_exception;

void xmlvm_unimplemented_native_method();
void XMLVM_NOT_IMPLEMENTED();
void XMLVM_ERROR(const char* msg);

#endif
