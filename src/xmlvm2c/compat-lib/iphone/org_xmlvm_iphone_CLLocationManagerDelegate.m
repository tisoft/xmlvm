#include "org_xmlvm_iphone_CLHeading.h"
#include "org_xmlvm_iphone_CLLocationManager.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_CLLocation.h"
#include "org_xmlvm_iphone_CLRegion.h"

#include "org_xmlvm_iphone_CLLocationManagerDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CLLocationManagerDelegate __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.CLLocationManagerDelegate", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CLLocationManagerDelegate()
{
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLLocationManagerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManagerDelegate_didUpdateToLocation___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLLocation_org_xmlvm_iphone_CLLocation;
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManagerDelegate_didFailWithError___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_NSError;
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManagerDelegate_didUpdateHeading___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLHeading;
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManagerDelegate_locationManagerShouldDisplayHeadingCalibration___org_xmlvm_iphone_CLLocationManager;
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManagerDelegate_didEnterRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion;
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManagerDelegate_didExitRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion;
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManagerDelegate_monitoringDidFailForRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion_org_xmlvm_iphone_NSError;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLLocationManagerDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLLocationManagerDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLLocationManagerDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocationManagerDelegate()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationManagerDelegate.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManagerDelegate();
    org_xmlvm_iphone_CLLocationManagerDelegate* me = (org_xmlvm_iphone_CLLocationManagerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLLocationManagerDelegate));
    me->__class = &__CLASS_org_xmlvm_iphone_CLLocationManagerDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLLocationManagerDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocationManagerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CLLocationManagerDelegate();
    org_xmlvm_iphone_CLLocationManagerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CLLocationManagerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManagerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManagerDelegate_didUpdateToLocation___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLLocation_org_xmlvm_iphone_CLLocation(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManagerDelegate_didUpdateToLocation___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLLocation_org_xmlvm_iphone_CLLocation]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManagerDelegate_didFailWithError___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManagerDelegate_didFailWithError___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManagerDelegate_didUpdateHeading___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLHeading(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManagerDelegate_didUpdateHeading___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLHeading]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManagerDelegate_locationManagerShouldDisplayHeadingCalibration___org_xmlvm_iphone_CLLocationManager(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManagerDelegate_locationManagerShouldDisplayHeadingCalibration___org_xmlvm_iphone_CLLocationManager]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManagerDelegate_didEnterRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManagerDelegate_didEnterRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManagerDelegate_didExitRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManagerDelegate_didExitRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManagerDelegate_monitoringDidFailForRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManagerDelegate_monitoringDidFailForRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

