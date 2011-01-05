#include "java_util_List.h"

#include "org_xmlvm_iphone_NSFileManager.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSFileManager __TIB_org_xmlvm_iphone_NSFileManager = {
    0, // classInitialized
    "org.xmlvm.iphone.NSFileManager", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSFileManager()
{
    __TIB_org_xmlvm_iphone_NSFileManager.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSFileManager.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSFileManager;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSFileManager.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSFileManager.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String;
    __TIB_org_xmlvm_iphone_NSFileManager.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map;
    __TIB_org_xmlvm_iphone_NSFileManager.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSFileManager.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSFileManager.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSFileManager.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSFileManager.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSFileManager = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSFileManager);
    __TIB_org_xmlvm_iphone_NSFileManager.clazz = __CLASS_org_xmlvm_iphone_NSFileManager;
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
    if (!__TIB_org_xmlvm_iphone_NSFileManager.classInitialized) __INIT_org_xmlvm_iphone_NSFileManager();
    org_xmlvm_iphone_NSFileManager* me = (org_xmlvm_iphone_NSFileManager*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSFileManager));
    me->tib = &__TIB_org_xmlvm_iphone_NSFileManager;
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
    if (!__TIB_org_xmlvm_iphone_NSFileManager.classInitialized) __INIT_org_xmlvm_iphone_NSFileManager();
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
    if (!__TIB_org_xmlvm_iphone_NSFileManager.classInitialized) __INIT_org_xmlvm_iphone_NSFileManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager___CLINIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

