#ifndef __ORG_XMLVM_IPHONE_UIDEVICEORIENTATION__
#define __ORG_XMLVM_IPHONE_UIDEVICEORIENTATION__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIDeviceOrientation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIDeviceOrientation, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDeviceOrientation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDeviceOrientation_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDeviceOrientation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIDeviceOrientation \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDeviceOrientation \
    } org_xmlvm_iphone_UIDeviceOrientation

struct org_xmlvm_iphone_UIDeviceOrientation {
    __TIB_DEFINITION_org_xmlvm_iphone_UIDeviceOrientation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIDeviceOrientation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDeviceOrientation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDeviceOrientation
typedef struct org_xmlvm_iphone_UIDeviceOrientation org_xmlvm_iphone_UIDeviceOrientation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIDeviceOrientation 11

void __INIT_org_xmlvm_iphone_UIDeviceOrientation();
void __DELETE_org_xmlvm_iphone_UIDeviceOrientation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDeviceOrientation(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDeviceOrientation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDeviceOrientation();
JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_Unknown();
void org_xmlvm_iphone_UIDeviceOrientation_PUT_Unknown(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_Portrait();
void org_xmlvm_iphone_UIDeviceOrientation_PUT_Portrait(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_PortraitUpsideDown();
void org_xmlvm_iphone_UIDeviceOrientation_PUT_PortraitUpsideDown(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_LandscapeLeft();
void org_xmlvm_iphone_UIDeviceOrientation_PUT_LandscapeLeft(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_LandscapeRight();
void org_xmlvm_iphone_UIDeviceOrientation_PUT_LandscapeRight(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_FaceUp();
void org_xmlvm_iphone_UIDeviceOrientation_PUT_FaceUp(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceOrientation_GET_FaceDown();
void org_xmlvm_iphone_UIDeviceOrientation_PUT_FaceDown(JAVA_INT v);

#endif
