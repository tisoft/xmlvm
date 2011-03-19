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
#include "xmlvm-util.h"
#include "java_lang_System.h"
#include "java_lang_Class.h"
#include "java_lang_String.h"
#include <stdio.h>
#include <string.h>


XMLVM_JMP_BUF xmlvm_exception_env_main_thread;

XMLVM_STATIC_INITIALIZER_CONTROLLER* staticInitializerController;



void xmlvm_init()
{
#ifndef XMLVM_NO_GC
#ifdef DEBUG
    setenv("GC_PRINT_STATS", "1", 1);
#endif
    GC_INIT();
#endif

    staticInitializerController = XMLVM_MALLOC(sizeof(XMLVM_STATIC_INITIALIZER_CONTROLLER));
    staticInitializerController->recursiveLocks = 0;
    staticInitializerController->owningThread = NULL;
    staticInitializerController->owningThreadMutex = XMLVM_MALLOC(sizeof(pthread_mutex_t));
    if (0 != pthread_mutex_init(staticInitializerController->owningThreadMutex, NULL)) {
        XMLVM_ERROR("Error initializing static initializer's owning thread mutex", __FILE__, __FUNCTION__, __LINE__);
    }
    staticInitializerController->initMutex = XMLVM_MALLOC(sizeof(pthread_mutex_t));
    if (0 != pthread_mutex_init(staticInitializerController->initMutex, NULL)) {
        XMLVM_ERROR("Error initializing static initializer mutex", __FILE__, __FUNCTION__, __LINE__);
    }

    if (XMLVM_SETJMP(xmlvm_exception_env_main_thread)) {
        XMLVM_ERROR("Unhandled exception thrown", __FILE__, __FUNCTION__, __LINE__);
    }
    __INIT_org_xmlvm_runtime_XMLVMArray();
    java_lang_Class_initNativeLayer__();
    __INIT_java_lang_System();
    org_xmlvm_runtime_XMLVMUtil_init__();
}

/**
 * Lock a mutex. If an error occurs, terminate the program.
 */
static void lockOrExit(char* className, pthread_mutex_t* mut)
{
    int result = pthread_mutex_lock(mut);
    if (0 != result) {
        printf("Error locking mutex in %s: %i\n", className, result);
        exit(1);
    }
//    else { printf("SUCCESSFUL mutex lock in %s\n", className); }
}

/**
 * Unlock a mutex. If an error occurs, terminate the program.
 */
static void unlockOrExit(char* className, pthread_mutex_t* mut)
{
    int result = pthread_mutex_unlock(mut);
    if (0 != result) {
        printf("Error unlocking mutex in %s: %i\n", className, result);
        exit(1);
    }
//    else { printf("SUCCESSFUL mutex unlock in %s\n", className); }
}

/**
 * Lock the static initializer mutex and store the thread that is currently
 * allowed to run static initializers
 */
static void lockInitMutex(char* className, pthread_t curThread)
{
    lockOrExit(className, staticInitializerController->initMutex);
    lockOrExit(className, staticInitializerController->owningThreadMutex);
    staticInitializerController->owningThread = curThread;
    unlockOrExit(className, staticInitializerController->owningThreadMutex);
}

/**
 * Allow another thread to run static initializers after unlocking the static
 * initializer mutex. 
 */
static void unlockInitMutex(char* className)
{
    lockOrExit(className, staticInitializerController->owningThreadMutex);
    staticInitializerController->owningThread = NULL;
    unlockOrExit(className, staticInitializerController->owningThreadMutex);
    unlockOrExit(className, staticInitializerController->initMutex);
}

/**
 * Lock the static initializer mutex unless this thread already has the lock.
 * Increment the mutex recursion count.
 */
void staticInitializerRecursiveLock(void* tibDefinition)
{
    char* className = ((struct __TIB_DEFINITION_TEMPLATE*)tibDefinition)->className;
    int currentIsOwner = 0;
    pthread_t curThread = pthread_self();
    lockOrExit(className, staticInitializerController->owningThreadMutex);
    if (staticInitializerController->owningThread != NULL) {
        currentIsOwner = pthread_equal(curThread, staticInitializerController->owningThread);
    }
    unlockOrExit(className, staticInitializerController->owningThreadMutex);

    if (currentIsOwner == 0) {
        lockInitMutex(className, curThread);
    }

    staticInitializerController->recursiveLocks++;

//    printf("Acquired recursive lock #%i in %s\n", staticInitializerController->recursiveLocks, className);
}

/**
 * Unlock the static initializer mutex if the thread is finished with static
 * initialization. If the thread is not finished, decrement the mutex recursion
 * count.
 */
void staticInitializerRecursiveUnlock(void* tibDefinition)
{
    char* className = ((struct __TIB_DEFINITION_TEMPLATE*)tibDefinition)->className;
//    printf("Releasing recursive lock #%i in %s\n", staticInitializerController->recursiveLocks, className);

    staticInitializerController->recursiveLocks--;
    if (staticInitializerController->recursiveLocks == 0) {
        unlockInitMutex(className);
    }
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

int xmlvm_java_string_cmp(JAVA_OBJECT s1, const char* s2)
{
    java_lang_String* str = (java_lang_String*) s1;
    JAVA_INT len = str->fields.java_lang_String.count_;
    if (len != strlen(s2)) {
        return 0;
    }
    JAVA_INT offset = str->fields.java_lang_String.offset_;
    org_xmlvm_runtime_XMLVMArray* value = (org_xmlvm_runtime_XMLVMArray*) str->fields.java_lang_String.value_;
    JAVA_ARRAY_CHAR* valueArray = (JAVA_ARRAY_CHAR*) value->fields.org_xmlvm_runtime_XMLVMArray.array_;
    for (int i = 0; i < len; i++) {
        if (valueArray[i + offset] != s2[i]) {
            return 0;
        }
    }
    return 1;
}

const char* xmlvm_java_string_to_const_char(JAVA_OBJECT s)
{
    java_lang_String* str = (java_lang_String*) s;
    JAVA_INT len = str->fields.java_lang_String.count_;
    char* cs = XMLVM_MALLOC(len + 1);
    JAVA_INT offset = str->fields.java_lang_String.offset_;
    org_xmlvm_runtime_XMLVMArray* value = (org_xmlvm_runtime_XMLVMArray*) str->fields.java_lang_String.value_;
    JAVA_ARRAY_CHAR* valueArray = (JAVA_ARRAY_CHAR*) value->fields.org_xmlvm_runtime_XMLVMArray.array_;
    int i = 0;
    for (i = 0; i < len; i++) {
        cs[i] = valueArray[i + offset];
    }
    cs[i] = '\0';
    return cs;
}

JAVA_OBJECT xmlvm_create_java_string(const char* s)
{
    java_lang_String* str = __NEW_java_lang_String();
    org_xmlvm_runtime_XMLVMArray* charArray = XMLVMArray_createFromString(s);
    java_lang_String___INIT____char_1ARRAY(str, charArray);
    return XMLVMUtil_getFromStringPool(str);
}

//---------------------------------------------------------------------------------------------
// XMLVMClass

JAVA_OBJECT XMLVM_CREATE_CLASS_OBJECT(void* tib)
{
    JAVA_OBJECT clazz = __NEW_java_lang_Class();
    java_lang_Class___INIT____java_lang_Object(clazz, tib);
    return clazz;
}


JAVA_OBJECT XMLVM_CREATE_ARRAY_CLASS_OBJECT(JAVA_OBJECT baseType, int dimensions)
{
    __TIB_DEFINITION_org_xmlvm_runtime_XMLVMArray* tib = XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_runtime_XMLVMArray));
    XMLVM_MEMCPY(tib, &__TIB_org_xmlvm_runtime_XMLVMArray, sizeof(__TIB_DEFINITION_org_xmlvm_runtime_XMLVMArray));
    tib->flags = XMLVM_TYPE_ARRAY;
    tib->baseType = baseType;
    tib->dimensions = dimensions;
    JAVA_OBJECT clazz = __NEW_java_lang_Class();
    java_lang_Class___INIT____java_lang_Object(clazz, tib);
    tib->clazz = clazz;
    // Set the arrayType in in baseType to this newly created array type class
    java_lang_Class* baseTypeClass = (java_lang_Class*) baseType;
    __TIB_DEFINITION_TEMPLATE* baseTypeTIB = (__TIB_DEFINITION_TEMPLATE*) baseTypeClass->fields.java_lang_Class.tib_;
    baseTypeTIB->arrayType = clazz;
    return clazz;
}


int XMLVM_ISA(JAVA_OBJECT obj, JAVA_OBJECT clazz)
{
    int i;
    __TIB_DEFINITION_TEMPLATE* objClass;
    if (obj == JAVA_NULL) {
        return 0;
    }
    objClass = (__TIB_DEFINITION_TEMPLATE*) ((java_lang_Object*) obj)->tib;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) ((java_lang_Class*) clazz)->fields.java_lang_Class.tib_;
    while (objClass != JAVA_NULL) {
        if (strcmp(objClass->className, tib->className) == 0) {
            return 1;
        }
        // Check all implemented interfaces
        for (i = 0; i < objClass->numImplementedInterfaces; i++) {
            if (strcmp(objClass->implementedInterfaces[0][i]->className, tib->className) == 0) {
                return 1;
            }
        }
        objClass = objClass->extends;
    }
    return 0;
}


//---------------------------------------------------------------------------------------------
// XMLVMArray


JAVA_OBJECT XMLVMArray_createSingleDimension(JAVA_OBJECT type, JAVA_INT size)
{
    return org_xmlvm_runtime_XMLVMArray_createSingleDimension___java_lang_Class_int(type, size);
}

JAVA_OBJECT XMLVMArray_createSingleDimensionWithData(JAVA_OBJECT type, JAVA_INT size, JAVA_OBJECT data)
{
    return org_xmlvm_runtime_XMLVMArray_createSingleDimensionWithData___java_lang_Class_int_java_lang_Object(type, size, data);
}


JAVA_OBJECT XMLVMArray_createMultiDimensions(JAVA_OBJECT type, JAVA_OBJECT dimensions)
{
    return org_xmlvm_runtime_XMLVMArray_createMultiDimensions___java_lang_Class_org_xmlvm_runtime_XMLVMArray(type, dimensions);
}

JAVA_OBJECT XMLVMArray_createFromString(const char* str)
{
    int len = strlen(str);
    int size = len * sizeof(JAVA_ARRAY_CHAR);
    int i;    
    JAVA_ARRAY_CHAR* data = XMLVM_MALLOC(size);
    for (i = 0; i < len; i++) {
        data[i] = *str++;
    }
    return XMLVMArray_createSingleDimensionWithData(__CLASS_char_1ARRAY, len, data);
}

void XMLVMArray_fillArray(JAVA_OBJECT array, void* data)
{
    org_xmlvm_runtime_XMLVMArray_fillArray___org_xmlvm_runtime_XMLVMArray_java_lang_Object(array, data);
}

int XMLVMArray_count(JAVA_OBJECT array)
{
    org_xmlvm_runtime_XMLVMArray* a = (org_xmlvm_runtime_XMLVMArray*) array;
    return a->fields.org_xmlvm_runtime_XMLVMArray.length_;
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

