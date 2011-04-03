#ifndef __ORG_XMLVM_IPHONE_UIDEVICE__
#define __ORG_XMLVM_IPHONE_UIDEVICE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.UIDevice
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIDevice, 28, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIDevice)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDevice;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDevice_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDevice_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDevice_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDevice
//XMLVM_END_DECLARATIONS

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIDevice 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getMultitaskingSupported__ 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getUniqueIdentifier__ 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getName__ 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getSystemName__ 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getSystemVersion__ 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getModel__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getLocalizedModel__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getUserInterfaceIdiom__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getOrientation__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_isGeneratingDeviceOrientationNotifications__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_beginGeneratingDeviceOrientationNotifications__ 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_endGeneratingDeviceOrientationNotifications__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getBatteryLevel__ 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_isBatteryMonitoringEnabled__ 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_setBatteryMonitoringEnabled___boolean 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getBatteryState__ 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_isProximityMonitoringEnabled__ 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_setProximityMonitoringEnabled___boolean 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIDevice_getProximityState__ 27

void __INIT_org_xmlvm_iphone_UIDevice();
void __INIT_IMPL_org_xmlvm_iphone_UIDevice();
void __DELETE_org_xmlvm_iphone_UIDevice(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDevice(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDevice();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDevice();
JAVA_OBJECT org_xmlvm_iphone_UIDevice_currentDevice__();
// Vtable index: 9
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_getMultitaskingSupported__(JAVA_OBJECT me);
// Vtable index: 10
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getUniqueIdentifier__(JAVA_OBJECT me);
// Vtable index: 11
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getName__(JAVA_OBJECT me);
// Vtable index: 12
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getSystemName__(JAVA_OBJECT me);
// Vtable index: 13
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getSystemVersion__(JAVA_OBJECT me);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getModel__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_UIDevice_getLocalizedModel__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_INT org_xmlvm_iphone_UIDevice_getUserInterfaceIdiom__(JAVA_OBJECT me);
// Vtable index: 17
JAVA_INT org_xmlvm_iphone_UIDevice_getOrientation__(JAVA_OBJECT me);
// Vtable index: 18
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me);
// Vtable index: 19
void org_xmlvm_iphone_UIDevice_beginGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me);
// Vtable index: 20
void org_xmlvm_iphone_UIDevice_endGeneratingDeviceOrientationNotifications__(JAVA_OBJECT me);
// Vtable index: 21
JAVA_FLOAT org_xmlvm_iphone_UIDevice_getBatteryLevel__(JAVA_OBJECT me);
// Vtable index: 22
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isBatteryMonitoringEnabled__(JAVA_OBJECT me);
// Vtable index: 23
void org_xmlvm_iphone_UIDevice_setBatteryMonitoringEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 24
JAVA_INT org_xmlvm_iphone_UIDevice_getBatteryState__(JAVA_OBJECT me);
// Vtable index: 25
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_isProximityMonitoringEnabled__(JAVA_OBJECT me);
// Vtable index: 26
void org_xmlvm_iphone_UIDevice_setProximityMonitoringEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 27
JAVA_BOOLEAN org_xmlvm_iphone_UIDevice_getProximityState__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIDevice___CLINIT_();

#endif
