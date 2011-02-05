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

#ifndef __XMLVM_H__
#define __XMLVM_H__


//#import <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <setjmp.h>

#ifdef XMLVM_NO_GC

#define XMLVM_MALLOC(size) malloc(size)
#define XMLVM_FREE(pointer) free(pointer)
#define XMLVM_FINALIZE(me, func)

#else

#include "gc.h"

#define XMLVM_MALLOC(size) GC_MALLOC(size)
#define XMLVM_FREE(pointer) GC_FREE(pointer)
#define XMLVM_FINALIZE(me, func) GC_REGISTER_FINALIZER ((void *)me, func, (void *)NULL, (GC_finalization_proc *)0, (void * *)0);

#endif


#define XMLVM_BZERO(pointer, size) memset((pointer), 0, size)
#define XMLVM_MEMCPY(dest, src, size) memcpy(dest, src, size)
#define XMLVM_OFFSETOF(type, field) ((unsigned long) &(((type *) 0)->field))


#define XMLVM_FORWARD_DECL(class) \
    JAVA_OBJECT __NEW_ ##class(); \
    struct class; \
    typedef struct class class;


void xmlvm_init();


typedef void               JAVA_VOID;
typedef int                JAVA_BOOLEAN;
typedef int                JAVA_CHAR;
typedef int                JAVA_BYTE;
typedef int                JAVA_SHORT;
typedef int                JAVA_INT;
typedef unsigned int       JAVA_UINT;
typedef long long          JAVA_LONG;
typedef unsigned long long JAVA_ULONG;
typedef float              JAVA_FLOAT;
typedef double             JAVA_DOUBLE;
typedef void*              JAVA_OBJECT;

//TODO which values should we use for Double.INFINITY?
#define Infinity 0
#define NaN 0

typedef char              JAVA_ARRAY_BYTE;
typedef char              JAVA_ARRAY_BOOLEAN;
typedef unsigned short    JAVA_ARRAY_CHAR;
typedef short             JAVA_ARRAY_SHORT;
typedef int               JAVA_ARRAY_INT;
typedef long long         JAVA_ARRAY_LONG;
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


#define JAVA_NULL ((JAVA_OBJECT) 0)

typedef void (*VTABLE_PTR)();
typedef void (*Func_V)();
typedef void (*Func_VO)(JAVA_OBJECT o1);
typedef void (*Func_VOO)(JAVA_OBJECT o1, JAVA_OBJECT o2);
typedef void (*Func_VOOO)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_OBJECT o3);
typedef void (*Func_VOOOO)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_OBJECT o3, JAVA_OBJECT o4);
typedef void (*Func_VOOOOO)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_OBJECT o3, JAVA_OBJECT o4, JAVA_OBJECT o5);
typedef void (*Func_VOOOOOO)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_OBJECT o3, JAVA_OBJECT o4, JAVA_OBJECT o5, JAVA_OBJECT o6);
typedef void (*Func_VOOB)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_BOOLEAN o3);
typedef void (*Func_VOOI)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_INT o3);
typedef JAVA_OBJECT (*Func_OOO)(JAVA_OBJECT o1, JAVA_OBJECT o2);
typedef JAVA_OBJECT (*Func_OOOO)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_OBJECT o3);
typedef JAVA_OBJECT (*Func_O)();
typedef float (*Func_FOOO)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_OBJECT o3);
typedef JAVA_INT (*Func_IOO)(JAVA_OBJECT o1, JAVA_OBJECT o2);
typedef JAVA_INT (*Func_IOOI)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_INT i1);
typedef JAVA_OBJECT (*Func_OOOI)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_INT i1);
typedef void (*Func_VOOIO)(JAVA_OBJECT o1, JAVA_OBJECT o2, JAVA_INT i1, JAVA_OBJECT o3);

#define java_lang_reflect_Modifier_PUBLIC       1
#define java_lang_reflect_Modifier_PRIVATE      2
#define java_lang_reflect_Modifier_PROTECTED    4
#define java_lang_reflect_Modifier_STATIC       8
#define java_lang_reflect_Modifier_FINAL        16
#define java_lang_reflect_Modifier_SYNCHRONIZED 32
#define java_lang_reflect_Modifier_VOLATILE     64
#define java_lang_reflect_Modifier_TRANSIENT    128
#define java_lang_reflect_Modifier_NATIVE       256
#define java_lang_reflect_Modifier_INTERFACE    512
#define java_lang_reflect_Modifier_ABSTRACT     1024
#define java_lang_reflect_Modifier_STRICT       2048
#define java_lang_reflect_Modifier_BRIDGE       64
#define java_lang_reflect_Modifier_VARARGS      128
#define java_lang_reflect_Modifier_SYNTHETIC    4096
#define java_lang_reflect_Modifier_ANNOTATION   8192
#define java_lang_reflect_Modifier_ENUM         16384

typedef struct {
    const char*  name;
    JAVA_OBJECT* type;
    JAVA_INT     modifiers;
    JAVA_INT     offset;
    JAVA_OBJECT* address;
    const char*  signature;
    JAVA_OBJECT  annotations; // XMLVMArray(byte)
} XMLVM_FIELD_REFLECTION_DATA;

typedef struct {
    JAVA_OBJECT** parameterTypes;
    int           numParameterTypes;
    JAVA_OBJECT*  checkedExceptions;
    int           numCheckedExceptions;
    int           modifiers;
    const char*   signature;
    JAVA_OBJECT   annotations;
    JAVA_OBJECT   parameterAnnotations;
} XMLVM_CONSTRUCTOR_REFLECTION_DATA;

typedef struct {
    const char*   name;
    JAVA_OBJECT** parameterTypes;
    int           numParameterTypes;
    JAVA_OBJECT*  checkedExceptions;
    int           numCheckedExceptions;
    int           modifiers;
    const char*   signature;
    JAVA_OBJECT   annotations;
    JAVA_OBJECT   parameterAnnotations;
} XMLVM_METHOD_REFLECTION_DATA;

#define XMLVM_TYPE_CLASS     1
#define XMLVM_TYPE_INTERFACE 2
#define XMLVM_TYPE_ENUM      4
#define XMLVM_TYPE_PRIMITIVE 8
#define XMLVM_TYPE_ARRAY     16

#define XMLVM_DEFINE_CLASS(name, vtableSize) \
typedef struct __TIB_DEFINITION_##name { \
    int                                 classInitialized; \
    Func_V                              classInitializer; \
    const char*                         className; \
    struct __TIB_DEFINITION_TEMPLATE*   extends; \
    int                                 flags; \
    JAVA_OBJECT                         clazz; \
    JAVA_OBJECT                         baseType; \
    JAVA_OBJECT                         arrayType; \
    int                                 dimensions; \
    XMLVM_FIELD_REFLECTION_DATA*        declaredFields; \
    int                                 numDeclaredFields; \
    XMLVM_CONSTRUCTOR_REFLECTION_DATA*  declaredConstructors; \
    int                                 numDeclaredConstructors; \
    Func_OOO                            constructorDispatcherFunc; \
    XMLVM_METHOD_REFLECTION_DATA*       declaredMethods; \
    int                                 numDeclaredMethods; \
    Func_OOOO                           methodDispatcherFunc; \
    Func_O                              newInstanceFunc; \
    int                                 numInterfaces; \
    struct __TIB_DEFINITION_TEMPLATE* (*interfaces)[1]; \
    int                                 numImplementedInterfaces; \
    struct __TIB_DEFINITION_TEMPLATE* (*implementedInterfaces)[1]; \
    VTABLE_PTR                          vtable[vtableSize]; \
} __TIB_DEFINITION_##name; \
\
extern __TIB_DEFINITION_##name __TIB_##name;

XMLVM_DEFINE_CLASS(TEMPLATE, 0)

int XMLVM_ISA(JAVA_OBJECT obj, JAVA_OBJECT clazz);
VTABLE_PTR XMLVM_LOOKUP_INTERFACE_METHOD(JAVA_OBJECT me, const char* ifaceName, int vtableIndex);
int xmlvm_java_string_cmp(JAVA_OBJECT s1, const char* s2);
JAVA_OBJECT xmlvm_create_java_string(const char* s);

#define XMLVM_SIZE_OF_OBJECT_VTABLE 11


//---------------------------------------------------------------------------------------------
// XMLVMClass

// Generated by AugmentedCOutputProcess in file xmlvm-tib-list.c and used in Class.forName()
extern __TIB_DEFINITION_TEMPLATE* __xmlvm_tib_list[];
extern int __xmlvm_num_tib;

extern JAVA_OBJECT __CLASS_boolean;
extern JAVA_OBJECT __CLASS_byte;
extern JAVA_OBJECT __CLASS_char;
extern JAVA_OBJECT __CLASS_short;
extern JAVA_OBJECT __CLASS_int;
extern JAVA_OBJECT __CLASS_long;
extern JAVA_OBJECT __CLASS_float;
extern JAVA_OBJECT __CLASS_double;

extern JAVA_OBJECT __CLASS_boolean_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_byte_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_char_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_short_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_int_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_long_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_float_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_double_ARRAYTYPE;

extern JAVA_OBJECT __CLASS_boolean_ARRAYTYPE_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_byte_ARRAYTYPE_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_char_ARRAYTYPE_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_short_ARRAYTYPE_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_int_ARRAYTYPE_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_long_ARRAYTYPE_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_float_ARRAYTYPE_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_double_ARRAYTYPE_ARRAYTYPE;
extern JAVA_OBJECT __CLASS_java_lang_Object_ARRAYTYPE_ARRAYTYPE;

JAVA_OBJECT XMLVM_CREATE_CLASS_OBJECT(void* tib);
JAVA_OBJECT XMLVM_CREATE_ARRAY_CLASS_OBJECT(JAVA_OBJECT baseType, int dimensions);


//---------------------------------------------------------------------------------------------
// XMLVMArray

JAVA_OBJECT XMLVMArray_createSingleDimension(JAVA_OBJECT type, int size);
JAVA_OBJECT XMLVMArray_createSingleDimensionWithData(JAVA_OBJECT type, int size, void* data);
JAVA_OBJECT XMLVMArray_createMultiDimensions(JAVA_OBJECT type, JAVA_OBJECT dimensions);
JAVA_OBJECT XMLVMArray_createFromString(const char* str);
void XMLVMArray_fillArray(JAVA_OBJECT array, void* data);
JAVA_INT XMLVMArray_count(JAVA_OBJECT array);

XMLVM_DEFINE_CLASS(boolean, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(byte, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(char, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(short, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(int, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(long, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(float, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(double, XMLVM_SIZE_OF_OBJECT_VTABLE)

void __INIT_boolean();
void __INIT_byte();
void __INIT_char();
void __INIT_short();
void __INIT_int();
void __INIT_long();
void __INIT_float();
void __INIT_double();

XMLVM_DEFINE_CLASS(java_lang_Object_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(boolean_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(byte_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(char_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(short_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(int_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(long_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(float_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)
XMLVM_DEFINE_CLASS(double_ARRAYTYPE, XMLVM_SIZE_OF_OBJECT_VTABLE)

#include "org_xmlvm_runtime_XMLVMArray.h"


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

#define XMLVM_NOT_IMPLEMENTED() XMLVM_ERROR("Not implemented", __FILE__, __FUNCTION__, __LINE__)
#define XMLVM_INTERNAL_ERROR() XMLVM_ERROR("Internal error", __FILE__, __FUNCTION__, __LINE__)
#define XMLVM_RED_CLASS_DEPENDENCY() XMLVM_ERROR("Unsatisfied red class dependency", __FILE__, __FUNCTION__, __LINE__)

void xmlvm_unimplemented_native_method();
void XMLVM_ERROR(const char* msg, const char* file, const char* function, int line);

#endif
