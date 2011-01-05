
#include "org_xmlvm_iphone_NSObject.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSObject __TIB_org_xmlvm_iphone_NSObject = {
    0, // classInitialized
    "org.xmlvm.iphone.NSObject", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSObject()
{
    __TIB_org_xmlvm_iphone_NSObject.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSObject.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSObject;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSObject.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSObject.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_retain__;
    __TIB_org_xmlvm_iphone_NSObject.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_release__;
    __TIB_org_xmlvm_iphone_NSObject.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_dealloc__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSObject.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSObject.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSObject.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSObject.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSObject = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSObject);
    __TIB_org_xmlvm_iphone_NSObject.clazz = __CLASS_org_xmlvm_iphone_NSObject;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSObject(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject()
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    org_xmlvm_iphone_NSObject* me = (org_xmlvm_iphone_NSObject*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSObject));
    me->tib = &__TIB_org_xmlvm_iphone_NSObject;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSObject()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSObject();
    org_xmlvm_iphone_NSObject___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSObject___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject___INIT___]
    java_lang_Object___INIT___(me);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4)
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSObject_retain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_retain__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_release__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_release__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_dealloc__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_dealloc__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

