#ifndef __ORG_XMLVM_IPHONE_UIACCELEROMETER__
#define __ORG_XMLVM_IPHONE_UIACCELEROMETER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAccelerometerDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAccelerometerDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIAccelerometerDelegate)
#endif
// Class declarations for org.xmlvm.iphone.UIAccelerometer
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIAccelerometer, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIAccelerometer)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometer;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometer_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometer_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometer_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#import <UIKit/UIAccelerometer.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIAccelerometer \
    JAVA_OBJECT delegateC; \
    id<UIAccelerometerDelegate> delegateObjC;
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIAccelerometer \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIAccelerometer \
    } org_xmlvm_iphone_UIAccelerometer

struct org_xmlvm_iphone_UIAccelerometer {
    __TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometer* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIAccelerometer;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAccelerometer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAccelerometer
typedef struct org_xmlvm_iphone_UIAccelerometer org_xmlvm_iphone_UIAccelerometer;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIAccelerometer 7

void __INIT_org_xmlvm_iphone_UIAccelerometer();
void __INIT_IMPL_org_xmlvm_iphone_UIAccelerometer();
void __DELETE_org_xmlvm_iphone_UIAccelerometer(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAccelerometer(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAccelerometer();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAccelerometer();
JAVA_OBJECT org_xmlvm_iphone_UIAccelerometer_sharedAccelerometer__();
void org_xmlvm_iphone_UIAccelerometer_setUpdateInterval___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
void org_xmlvm_iphone_UIAccelerometer_setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIAccelerometer___CLINIT_();

#endif
