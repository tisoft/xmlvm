#ifndef __ORG_XMLVM_IPHONE_CLDEVICEORIENTATION__
#define __ORG_XMLVM_IPHONE_CLDEVICEORIENTATION__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.CLDeviceOrientation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CLDeviceOrientation, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDeviceOrientation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDeviceOrientation_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLDeviceOrientation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CLDeviceOrientation \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLDeviceOrientation \
    } org_xmlvm_iphone_CLDeviceOrientation

struct org_xmlvm_iphone_CLDeviceOrientation {
    __TIB_DEFINITION_org_xmlvm_iphone_CLDeviceOrientation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CLDeviceOrientation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLDeviceOrientation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLDeviceOrientation
typedef struct org_xmlvm_iphone_CLDeviceOrientation org_xmlvm_iphone_CLDeviceOrientation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLDeviceOrientation 11

void __INIT_org_xmlvm_iphone_CLDeviceOrientation();
void __DELETE_org_xmlvm_iphone_CLDeviceOrientation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLDeviceOrientation(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLDeviceOrientation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLDeviceOrientation();
JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_Unknown();
void org_xmlvm_iphone_CLDeviceOrientation_PUT_Unknown(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_Portrait();
void org_xmlvm_iphone_CLDeviceOrientation_PUT_Portrait(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_PortraitUpsideDown();
void org_xmlvm_iphone_CLDeviceOrientation_PUT_PortraitUpsideDown(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_LandscapeLeft();
void org_xmlvm_iphone_CLDeviceOrientation_PUT_LandscapeLeft(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_LandscapeRight();
void org_xmlvm_iphone_CLDeviceOrientation_PUT_LandscapeRight(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_FaceUp();
void org_xmlvm_iphone_CLDeviceOrientation_PUT_FaceUp(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_FaceDown();
void org_xmlvm_iphone_CLDeviceOrientation_PUT_FaceDown(JAVA_INT v);

#endif
