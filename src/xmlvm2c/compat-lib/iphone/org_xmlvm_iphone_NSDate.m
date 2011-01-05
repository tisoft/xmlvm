
#include "org_xmlvm_iphone_NSDate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSDate __TIB_org_xmlvm_iphone_NSDate = {
    0, // classInitialized
    "org.xmlvm.iphone.NSDate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDate;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDate_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSDate()
{
    __TIB_org_xmlvm_iphone_NSDate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSDate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSDate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSDate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSDate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSDate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSDate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSDate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSDate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSDate = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSDate);
    __TIB_org_xmlvm_iphone_NSDate.clazz = __CLASS_org_xmlvm_iphone_NSDate;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSDate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSDate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSDate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDate()
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) __INIT_org_xmlvm_iphone_NSDate();
    org_xmlvm_iphone_NSDate* me = (org_xmlvm_iphone_NSDate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSDate));
    me->tib = &__TIB_org_xmlvm_iphone_NSDate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSDate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDate()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSDate_date__()
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) __INIT_org_xmlvm_iphone_NSDate();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDate_date__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSDate_dateWithTimeIntervalSince1970___double(JAVA_DOUBLE n1)
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) __INIT_org_xmlvm_iphone_NSDate();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDate_dateWithTimeIntervalSince1970___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSDate_dateWithTimeIntervalSinceReferenceDate___double(JAVA_DOUBLE n1)
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) __INIT_org_xmlvm_iphone_NSDate();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDate_dateWithTimeIntervalSinceReferenceDate___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

