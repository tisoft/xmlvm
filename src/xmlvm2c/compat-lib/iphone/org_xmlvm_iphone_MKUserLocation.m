#include "org_xmlvm_iphone_CLLocation.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MKUserLocation.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MKUserLocation __CLASS_org_xmlvm_iphone_MKUserLocation = {
    0, // classInitialized
    "org.xmlvm.iphone.MKUserLocation", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MKUserLocation()
{
    __CLASS_org_xmlvm_iphone_MKUserLocation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_MKUserLocation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MKUserLocation.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_MKUserLocation.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getLocation__;
    __CLASS_org_xmlvm_iphone_MKUserLocation.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_isUpdating__;
    __CLASS_org_xmlvm_iphone_MKUserLocation.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getSubtitle__;
    __CLASS_org_xmlvm_iphone_MKUserLocation.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String;
    __CLASS_org_xmlvm_iphone_MKUserLocation.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getTitle__;
    __CLASS_org_xmlvm_iphone_MKUserLocation.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MKUserLocation.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MKUserLocation.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKUserLocation]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKUserLocation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKUserLocation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKUserLocation()
{
    if (!__CLASS_org_xmlvm_iphone_MKUserLocation.classInitialized) __INIT_org_xmlvm_iphone_MKUserLocation();
    org_xmlvm_iphone_MKUserLocation* me = (org_xmlvm_iphone_MKUserLocation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKUserLocation));
    me->__class = &__CLASS_org_xmlvm_iphone_MKUserLocation;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKUserLocation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MKUserLocation();
    org_xmlvm_iphone_MKUserLocation___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MKUserLocation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getLocation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getLocation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKUserLocation_isUpdating__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_isUpdating__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getSubtitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getSubtitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

