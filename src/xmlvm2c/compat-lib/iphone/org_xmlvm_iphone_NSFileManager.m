#include "java_util_List.h"
#include "org_xmlvm_iphone_NSErrorHolder.h"
#include "java_util_Map.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSFileManager.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSFileManager __CLASS_org_xmlvm_iphone_NSFileManager = {
    0, // classInitialized
    "org.xmlvm.iphone.NSFileManager", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSFileManager()
{
    __CLASS_org_xmlvm_iphone_NSFileManager.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSFileManager.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSFileManager;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSFileManager.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSFileManager.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String;
    __CLASS_org_xmlvm_iphone_NSFileManager.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map;
    __CLASS_org_xmlvm_iphone_NSFileManager.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSFileManager.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSFileManager.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);

    org_xmlvm_iphone_NSFileManager___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSFileManager]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSFileManager(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSFileManager]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSFileManager()
{
    if (!__CLASS_org_xmlvm_iphone_NSFileManager.classInitialized) __INIT_org_xmlvm_iphone_NSFileManager();
    org_xmlvm_iphone_NSFileManager* me = (org_xmlvm_iphone_NSFileManager*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSFileManager));
    me->__class = &__CLASS_org_xmlvm_iphone_NSFileManager;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSFileManager]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSFileManager()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSFileManager_defaultManager__()
{
    if (!__CLASS_org_xmlvm_iphone_NSFileManager.classInitialized) __INIT_org_xmlvm_iphone_NSFileManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager_defaultManager__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSFileManager___CLINIT_()
{
    if (!__CLASS_org_xmlvm_iphone_NSFileManager.classInitialized) __INIT_org_xmlvm_iphone_NSFileManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager___CLINIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

