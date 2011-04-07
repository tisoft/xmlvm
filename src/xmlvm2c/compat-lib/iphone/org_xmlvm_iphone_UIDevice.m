#include "xmlvm.h"

#include "org_xmlvm_iphone_UIDevice.h"

#define XMLVM_CURRENT_CLASS_NAME UIDevice
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIDevice

__TIB_DEFINITION_org_xmlvm_iphone_UIDevice __TIB_org_xmlvm_iphone_UIDevice = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIDevice, // classInitializer
    "org.xmlvm.iphone.UIDevice", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIDevice), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDevice;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDevice_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDevice_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDevice_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIDevice.h>


void org_xmlvm_iphone_UIDevice_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIDevice();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
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
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method19_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"currentDevice",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMultitaskingSupported",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getUniqueIdentifier",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getName",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSystemName",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSystemVersion",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getModel",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getLocalizedModel",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getUserInterfaceIdiom",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getOrientation",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isGeneratingDeviceOrientationNotifications",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"beginGeneratingDeviceOrientationNotifications",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"endGeneratingDeviceOrientationNotifications",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBatteryLevel",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isBatteryMonitoringEnabled",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBatteryMonitoringEnabled",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBatteryState",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isProximityMonitoringEnabled",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setProximityMonitoringEnabled",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getProximityState",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIDevice_currentDevice__();
        break;
    case 1:
        org_xmlvm_iphone_UIDevice_getMultitaskingSupported__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIDevice_getUniqueIdentifier__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UIDevice_getName__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UIDevice_getSystemName__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UIDevice_getSystemVersion__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_UIDevice_getModel__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UIDevice_getLocalizedModel__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_UIDevice_getUserInterfaceIdiom__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UIDevice_getOrientation__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UIDevice_isGeneratingDeviceOrientationNotifications__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_UIDevice_beginGeneratingDeviceOrientationNotifications__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UIDevice_endGeneratingDeviceOrientationNotifications__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_UIDevice_getBatteryLevel__(receiver);
        break;
    case 14:
        org_xmlvm_iphone_UIDevice_isBatteryMonitoringEnabled__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_UIDevice_setBatteryMonitoringEnabled___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 16:
        org_xmlvm_iphone_UIDevice_getBatteryState__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_UIDevice_isProximityMonitoringEnabled__(receiver);
        break;
    case 18:
        org_xmlvm_iphone_UIDevice_setProximityMonitoringEnabled___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 19:
        org_xmlvm_iphone_UIDevice_getProximityState__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIDevice()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIDevice);
    if (!__TIB_org_xmlvm_iphone_UIDevice.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIDevice();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIDevice);
}

void __INIT_IMPL_org_xmlvm_iphone_UIDevice()
{
    if (!__TIB_org_xmlvm_iphone_UIDevice.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIDevice.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_UIDevice.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDevice;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIDevice.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UIDevice.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getMultitaskingSupported__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getUniqueIdentifier__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getName__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getSystemName__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getSystemVersion__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getModel__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getLocalizedModel__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getUserInterfaceIdiom__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getOrientation__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_isGeneratingDeviceOrientationNotifications__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_beginGeneratingDeviceOrientationNotifications__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_endGeneratingDeviceOrientationNotifications__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getBatteryLevel__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_isBatteryMonitoringEnabled__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_setBatteryMonitoringEnabled___boolean;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getBatteryState__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_isProximityMonitoringEnabled__;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_setProximityMonitoringEnabled___boolean;
        __TIB_org_xmlvm_iphone_UIDevice.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UIDevice_getProximityState__;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UIDevice.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIDevice.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_UIDevice.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDevice.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIDevice.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIDevice.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDevice.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIDevice.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIDevice.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIDevice.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIDevice = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIDevice);
        __TIB_org_xmlvm_iphone_UIDevice.clazz = __CLASS_org_xmlvm_iphone_UIDevice;
        __TIB_org_xmlvm_iphone_UIDevice.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UIDevice_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDevice);
        __CLASS_org_xmlvm_iphone_UIDevice_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDevice_1ARRAY);
        __CLASS_org_xmlvm_iphone_UIDevice_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDevice_2ARRAY);
        org_xmlvm_iphone_UIDevice___CLINIT_();
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDevice]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIDevice.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIDevice(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDevice]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDevice(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDevice()
{
    if (!__TIB_org_xmlvm_iphone_UIDevice.classInitialized) __INIT_org_xmlvm_iphone_UIDevice();
    org_xmlvm_iphone_UIDevice* me = (org_xmlvm_iphone_UIDevice*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDevice));
    me->tib = &__TIB_org_xmlvm_iphone_UIDevice;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDevice(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDevice]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDevice()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIDevice_currentDevice__()
{
    if (!__TIB_org_xmlvm_iphone_UIDevice.classInitialized) __INIT_org_xmlvm_iphone_UIDevice();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_currentDevice__]
    UIDevice* device = [UIDevice currentDevice];
    JAVA_OBJECT me = __NEW_org_xmlvm_iphone_UIDevice();
    org_xmlvm_iphone_UIDevice_INTERNAL_CONSTRUCTOR(me, device);
    return me;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_getMultitaskingSupported__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getMultitaskingSupported__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDevice_getUniqueIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getUniqueIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDevice_getName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDevice_getSystemName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getSystemName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDevice_getSystemVersion__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getSystemVersion__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDevice_getModel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getModel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIDevice_getLocalizedModel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getLocalizedModel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIDevice_getUserInterfaceIdiom__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getUserInterfaceIdiom__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIDevice_getOrientation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getOrientation__]
    org_xmlvm_iphone_UIDevice* thiz = me;
    return ((UIDevice*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)).orientation;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_isGeneratingDeviceOrientationNotifications__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDevice_beginGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_beginGeneratingDeviceOrientationNotifications__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDevice_endGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_endGeneratingDeviceOrientationNotifications__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIDevice_getBatteryLevel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getBatteryLevel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isBatteryMonitoringEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_isBatteryMonitoringEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDevice_setBatteryMonitoringEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_setBatteryMonitoringEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIDevice_getBatteryState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getBatteryState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isProximityMonitoringEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_isProximityMonitoringEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDevice_setProximityMonitoringEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_setProximityMonitoringEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_getProximityState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice_getProximityState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIDevice___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIDevice___CLINIT___]
    //XMLVM_END_WRAPPER
}

