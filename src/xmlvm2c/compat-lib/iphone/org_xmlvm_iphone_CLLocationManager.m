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

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLRegion,
    &__CLASS_double,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLRegion,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLLocationManagerDelegate,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method22_arg_types[] = {
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method24_arg_types[] = {
};

static JAVA_OBJECT* __method25_arg_types[] = {
};

static JAVA_OBJECT* __method26_arg_types[] = {
};

static JAVA_OBJECT* __method27_arg_types[] = {
};

static JAVA_OBJECT* __method28_arg_types[] = {
};

static JAVA_OBJECT* __method29_arg_types[] = {
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"locationServicesEnabled",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"significantLocationChangeMonitoringAvailable",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"headingAvailable",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"regionMonitoringAvailable",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"regionMonitoringEnabled",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"startUpdatingLocation",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stopUpdatingLocation",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"startMonitoringSignificantLocationChanges",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stopMonitoringSignificantLocationChanges",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"startUpdatingHeading",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stopUpdatingHeading",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dismissHeadingCalibrationDisplay",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"startMonitoringForRegion",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stopMonitoringForRegion",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDesiredAccuracy",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDesiredAccuracy",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDistanceFilter",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDistanceFilter",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getHeadingFilter",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setHeadingFilter",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getHeadingOrientation",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setHeadingOrientation",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMonitoredRegions",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMaximumRegionMonitoringDistance",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getHeading",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getLocation",
    &__method27_arg_types[0],
    sizeof(__method27_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPurpose",
    &__method28_arg_types[0],
    sizeof(__method28_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setPurpose",
    &__method29_arg_types[0],
    sizeof(__method29_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_CLLocationManager_locationServicesEnabled__();
        break;
    case 1:
        org_xmlvm_iphone_CLLocationManager_significantLocationChangeMonitoringAvailable__();
        break;
    case 2:
        org_xmlvm_iphone_CLLocationManager_headingAvailable__();
        break;
    case 3:
        org_xmlvm_iphone_CLLocationManager_regionMonitoringAvailable__();
        break;
    case 4:
        org_xmlvm_iphone_CLLocationManager_regionMonitoringEnabled__();
        break;
    case 5:
        org_xmlvm_iphone_CLLocationManager_startUpdatingLocation__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_CLLocationManager_stopUpdatingLocation__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_CLLocationManager_startMonitoringSignificantLocationChanges__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_CLLocationManager_stopMonitoringSignificantLocationChanges__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_CLLocationManager_startUpdatingHeading__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_CLLocationManager_stopUpdatingHeading__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_CLLocationManager_dismissHeadingCalibrationDisplay__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_CLLocationManager_startMonitoringForRegion___org_xmlvm_iphone_CLRegion_double(receiver, argsArray[0], ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
        break;
    case 13:
        org_xmlvm_iphone_CLLocationManager_stopMonitoringForRegion___org_xmlvm_iphone_CLRegion(receiver, argsArray[0]);
        break;
    case 14:
        org_xmlvm_iphone_CLLocationManager_getDelegate__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_CLLocationManager_setDelegate___org_xmlvm_iphone_CLLocationManagerDelegate(receiver, argsArray[0]);
        break;
    case 16:
        org_xmlvm_iphone_CLLocationManager_getDesiredAccuracy__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_CLLocationManager_setDesiredAccuracy___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 18:
        org_xmlvm_iphone_CLLocationManager_getDistanceFilter__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_CLLocationManager_setDistanceFilter___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 20:
        org_xmlvm_iphone_CLLocationManager_getHeadingFilter__(receiver);
        break;
    case 21:
        org_xmlvm_iphone_CLLocationManager_setHeadingFilter___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 22:
        org_xmlvm_iphone_CLLocationManager_getHeadingOrientation__(receiver);
        break;
    case 23:
        org_xmlvm_iphone_CLLocationManager_setHeadingOrientation___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 24:
        org_xmlvm_iphone_CLLocationManager_getMonitoredRegions__(receiver);
        break;
    case 25:
        org_xmlvm_iphone_CLLocationManager_getMaximumRegionMonitoringDistance__(receiver);
        break;
    case 26:
        org_xmlvm_iphone_CLLocationManager_getHeading__(receiver);
        break;
    case 27:
        org_xmlvm_iphone_CLLocationManager_getLocation__(receiver);
        break;
    case 28:
        org_xmlvm_iphone_CLLocationManager_getPurpose__(receiver);
        break;
    case 29:
        org_xmlvm_iphone_CLLocationManager_setPurpose___java_lang_String(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
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
    __TIB_org_xmlvm_iphone_CLLocationManager.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CLLocationManager.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocationManager.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
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

