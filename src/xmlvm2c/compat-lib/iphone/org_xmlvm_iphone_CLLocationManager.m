#include "org_xmlvm_iphone_CLLocationManagerDelegate.h"
#include "org_xmlvm_iphone_CLHeading.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CLLocation.h"
#include "org_xmlvm_iphone_CLRegion.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CLLocationManager.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CLLocationManager __CLASS_org_xmlvm_iphone_CLLocationManager = {
    0, // classInitialized
    "org.xmlvm.iphone.CLLocationManager", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CLLocationManager()
{
    __CLASS_org_xmlvm_iphone_CLLocationManager.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CLLocationManager.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLLocationManager;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CLLocationManager.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_startUpdatingLocation__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_stopUpdatingLocation__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_startMonitoringSignificantLocationChanges__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_stopMonitoringSignificantLocationChanges__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_startUpdatingHeading__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_stopUpdatingHeading__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_dismissHeadingCalibrationDisplay__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_startMonitoringForRegion___org_xmlvm_iphone_CLRegion_double;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_stopMonitoringForRegion___org_xmlvm_iphone_CLRegion;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getDelegate__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setDelegate___org_xmlvm_iphone_CLLocationManagerDelegate;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getDesiredAccuracy__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setDesiredAccuracy___double;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getDistanceFilter__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setDistanceFilter___double;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getHeadingFilter__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setHeadingFilter___double;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getHeadingOrientation__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setHeadingOrientation___int;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getMonitoredRegions__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[34] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getMaximumRegionMonitoringDistance__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[35] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getHeading__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[36] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getLocation__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[37] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getPurpose__;
    __CLASS_org_xmlvm_iphone_CLLocationManager.vtable[38] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setPurpose___java_lang_String;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CLLocationManager.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CLLocationManager.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLLocationManager]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLLocationManager(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLLocationManager]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocationManager()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    org_xmlvm_iphone_CLLocationManager* me = (org_xmlvm_iphone_CLLocationManager*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLLocationManager));
    me->__class = &__CLASS_org_xmlvm_iphone_CLLocationManager;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLLocationManager]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocationManager()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CLLocationManager();
    org_xmlvm_iphone_CLLocationManager___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CLLocationManager___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_locationServicesEnabled__()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_locationServicesEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_significantLocationChangeMonitoringAvailable__()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_significantLocationChangeMonitoringAvailable__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_headingAvailable__()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_headingAvailable__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_regionMonitoringAvailable__()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_regionMonitoringAvailable__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_regionMonitoringEnabled__()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_regionMonitoringEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_startUpdatingLocation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_startUpdatingLocation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_stopUpdatingLocation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_stopUpdatingLocation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_startMonitoringSignificantLocationChanges__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_startMonitoringSignificantLocationChanges__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_stopMonitoringSignificantLocationChanges__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_stopMonitoringSignificantLocationChanges__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_startUpdatingHeading__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_startUpdatingHeading__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_stopUpdatingHeading__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_stopUpdatingHeading__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_dismissHeadingCalibrationDisplay__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_dismissHeadingCalibrationDisplay__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_startMonitoringForRegion___org_xmlvm_iphone_CLRegion_double(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_startMonitoringForRegion___org_xmlvm_iphone_CLRegion_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_stopMonitoringForRegion___org_xmlvm_iphone_CLRegion(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_stopMonitoringForRegion___org_xmlvm_iphone_CLRegion]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLLocationManager_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_setDelegate___org_xmlvm_iphone_CLLocationManagerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_setDelegate___org_xmlvm_iphone_CLLocationManagerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationManager_getDesiredAccuracy__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getDesiredAccuracy__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_setDesiredAccuracy___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_setDesiredAccuracy___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationManager_getDistanceFilter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getDistanceFilter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_setDistanceFilter___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_setDistanceFilter___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationManager_getHeadingFilter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getHeadingFilter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_setHeadingFilter___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_setHeadingFilter___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CLLocationManager_getHeadingOrientation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getHeadingOrientation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_setHeadingOrientation___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_setHeadingOrientation___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLLocationManager_getMonitoredRegions__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getMonitoredRegions__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationManager_getMaximumRegionMonitoringDistance__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getMaximumRegionMonitoringDistance__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLLocationManager_getHeading__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getHeading__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLLocationManager_getLocation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getLocation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLLocationManager_getPurpose__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_getPurpose__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocationManager_setPurpose___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_setPurpose___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

