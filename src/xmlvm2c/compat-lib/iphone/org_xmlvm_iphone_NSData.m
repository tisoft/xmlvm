
#include "org_xmlvm_iphone_NSData.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSData __TIB_org_xmlvm_iphone_NSData = {
    0, // classInitialized
    "org.xmlvm.iphone.NSData", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSData()
{
    __TIB_org_xmlvm_iphone_NSData.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSData.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSData;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSData.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSData.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean;
    __TIB_org_xmlvm_iphone_NSData.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSData_length__;
    __TIB_org_xmlvm_iphone_NSData.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSData_getBytes__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSData.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSData.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSData.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSData.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSData = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSData);
    __TIB_org_xmlvm_iphone_NSData.clazz = __CLASS_org_xmlvm_iphone_NSData;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSData]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSData(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSData]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSData()
{
    if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSData* me = (org_xmlvm_iphone_NSData*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSData));
    me->tib = &__TIB_org_xmlvm_iphone_NSData;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSData]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSData()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSData___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSData___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_dataWithContentsOfFile___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithContentsOfURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_dataWithContentsOfURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSData_length__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_length__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_getBytes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_getBytes__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

