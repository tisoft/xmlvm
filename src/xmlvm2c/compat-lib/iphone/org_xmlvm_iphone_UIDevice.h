#ifndef __ORG_XMLVM_IPHONE_UIDEVICE__
#define __ORG_XMLVM_IPHONE_UIDEVICE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDevice
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDevice
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIDevice)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UIDevice
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIDevice, 33)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDevice
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIDevice \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDevice \
    } org_xmlvm_iphone_UIDevice

struct org_xmlvm_iphone_UIDevice {
    __TIB_DEFINITION_org_xmlvm_iphone_UIDevice* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIDevice;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDevice
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDevice
typedef struct org_xmlvm_iphone_UIDevice org_xmlvm_iphone_UIDevice;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIDevice 33
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getMultitaskingSupported__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getUniqueIdentifier__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getName__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getSystemName__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getSystemVersion__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getModel__ 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getLocalizedModel__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getUserInterfaceIdiom__ 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getOrientation__ 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_isGeneratingDeviceOrientationNotifications__ 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_beginGeneratingDeviceOrientationNotifications__ 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_endGeneratingDeviceOrientationNotifications__ 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getBatteryLevel__ 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_isBatteryMonitoringEnabled__ 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_setBatteryMonitoringEnabled___boolean 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getBatteryState__ 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_isProximityMonitoringEnabled__ 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_setProximityMonitoringEnabled___boolean 31
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getProximityState__ 32

void __INIT_org_xmlvm_iphone_UIDevice();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDevice();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDevice();
JAVA_OBJECT org_xmlvm_iphone_UIDevice_currentDevice__();
// Vtable index: 14
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_getMultitaskingSupported__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getUniqueIdentifier__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getName__(JAVA_OBJECT me);
// Vtable index: 17
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getSystemName__(JAVA_OBJECT me);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getSystemVersion__(JAVA_OBJECT me);
// Vtable index: 19
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getModel__(JAVA_OBJECT me);
// Vtable index: 20
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getLocalizedModel__(JAVA_OBJECT me);
// Vtable index: 21
JAVA_INT org_xmlvm_iphone_UIDevice_getUserInterfaceIdiom__(JAVA_OBJECT me);
// Vtable index: 22
JAVA_INT org_xmlvm_iphone_UIDevice_getOrientation__(JAVA_OBJECT me);
// Vtable index: 23
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me);
// Vtable index: 24
void org_xmlvm_iphone_UIDevice_beginGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me);
// Vtable index: 25
void org_xmlvm_iphone_UIDevice_endGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me);
// Vtable index: 26
JAVA_FLOAT org_xmlvm_iphone_UIDevice_getBatteryLevel__(JAVA_OBJECT me);
// Vtable index: 27
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isBatteryMonitoringEnabled__(JAVA_OBJECT me);
// Vtable index: 28
void org_xmlvm_iphone_UIDevice_setBatteryMonitoringEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 29
JAVA_INT org_xmlvm_iphone_UIDevice_getBatteryState__(JAVA_OBJECT me);
// Vtable index: 30
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isProximityMonitoringEnabled__(JAVA_OBJECT me);
// Vtable index: 31
void org_xmlvm_iphone_UIDevice_setProximityMonitoringEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 32
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_getProximityState__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIDevice___CLINIT_();

#endif
