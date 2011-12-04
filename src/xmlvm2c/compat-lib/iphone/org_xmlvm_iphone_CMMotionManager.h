#ifndef __ORG_XMLVM_IPHONE_CMMOTIONMANAGER__
#define __ORG_XMLVM_IPHONE_CMMOTIONMANAGER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMGyroData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMGyroData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CMGyroData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMGyroHandler
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMGyroHandler
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CMGyroHandler)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSOperationQueue
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSOperationQueue
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSOperationQueue)
#endif
// Class declarations for org.xmlvm.iphone.CMMotionManager
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CMMotionManager, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CMMotionManager)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMMotionManager;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMMotionManager_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMMotionManager_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMMotionManager_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CMMotionManager
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CMMotionManager \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CMMotionManager \
    } org_xmlvm_iphone_CMMotionManager

struct org_xmlvm_iphone_CMMotionManager {
    __TIB_DEFINITION_org_xmlvm_iphone_CMMotionManager* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CMMotionManager;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMMotionManager
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMMotionManager
typedef struct org_xmlvm_iphone_CMMotionManager org_xmlvm_iphone_CMMotionManager;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CMMotionManager 7

void __INIT_org_xmlvm_iphone_CMMotionManager();
void __INIT_IMPL_org_xmlvm_iphone_CMMotionManager();
void __DELETE_org_xmlvm_iphone_CMMotionManager(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMMotionManager(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CMMotionManager();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CMMotionManager();
void org_xmlvm_iphone_CMMotionManager___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_CMMotionManager_startGyroUpdates__(JAVA_OBJECT me);
void org_xmlvm_iphone_CMMotionManager_stopGyroUpdates__(JAVA_OBJECT me);
void org_xmlvm_iphone_CMMotionManager_setGyroUpdateInterval___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
JAVA_BOOLEAN org_xmlvm_iphone_CMMotionManager_isGyroActive__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_CMMotionManager_isGyroAvailable__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CMMotionManager_gyroData__(JAVA_OBJECT me);
void org_xmlvm_iphone_CMMotionManager_startGyroUpdatesToQueue___org_xmlvm_iphone_NSOperationQueue_org_xmlvm_iphone_CMGyroHandler(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
