#include "xmlvm.h"
#include "org_xmlvm_iphone_CLLocationManagerDelegate.h"
#include "org_xmlvm_iphone_CLRegion.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CLLocationManager.h"

__TIB_DEFINITION_org_xmlvm_iphone_CLLocationManager __TIB_org_xmlvm_iphone_CLLocationManager = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CLLocationManager, // classInitializer
    "org.xmlvm.iphone.CLLocationManager", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationManager;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationManager_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CLLocationManager();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CLLocationManager___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_CLLocationManager()
{
    __TIB_org_xmlvm_iphone_CLLocationManager.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CLLocationManager.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLLocationManager;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLLocationManager.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_startUpdatingLocation__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_stopUpdatingLocation__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_startMonitoringSignificantLocationChanges__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_stopMonitoringSignificantLocationChanges__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_startUpdatingHeading__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_stopUpdatingHeading__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_dismissHeadingCalibrationDisplay__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_startMonitoringForRegion___org_xmlvm_iphone_CLRegion_double;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_stopMonitoringForRegion___org_xmlvm_iphone_CLRegion;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getDelegate__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setDelegate___org_xmlvm_iphone_CLLocationManagerDelegate;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getDesiredAccuracy__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setDesiredAccuracy___double;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getDistanceFilter__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setDistanceFilter___double;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getHeadingFilter__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setHeadingFilter___double;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getHeadingOrientation__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setHeadingOrientation___int;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getMonitoredRegions__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[34] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getMaximumRegionMonitoringDistance__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[35] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getHeading__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[36] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getLocation__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[37] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_getPurpose__;
    __TIB_org_xmlvm_iphone_CLLocationManager.vtable[38] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocationManager_setPurpose___java_lang_String;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CLLocationManager.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CLLocationManager.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_CLLocationManager.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocationManager.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLLocationManager.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CLLocationManager.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocationManager.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CLLocationManager = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CLLocationManager);
    __TIB_org_xmlvm_iphone_CLLocationManager.clazz = __CLASS_org_xmlvm_iphone_CLLocationManager;
    __CLASS_org_xmlvm_iphone_CLLocationManager_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocationManager, 1);

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
    if (!__TIB_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    org_xmlvm_iphone_CLLocationManager* me = (org_xmlvm_iphone_CLLocationManager*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLLocationManager));
    me->tib = &__TIB_org_xmlvm_iphone_CLLocationManager;
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
    if (!__TIB_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_locationServicesEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_significantLocationChangeMonitoringAvailable__()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_significantLocationChangeMonitoringAvailable__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_headingAvailable__()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_headingAvailable__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_regionMonitoringAvailable__()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationManager_regionMonitoringAvailable__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLLocationManager_regionMonitoringEnabled__()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationManager.classInitialized) __INIT_org_xmlvm_iphone_CLLocationManager();
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

