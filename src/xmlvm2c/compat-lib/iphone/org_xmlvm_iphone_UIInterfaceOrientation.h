#ifndef __ORG_XMLVM_IPHONE_UIINTERFACEORIENTATION__
#define __ORG_XMLVM_IPHONE_UIINTERFACEORIENTATION__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIInterfaceOrientation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIInterfaceOrientation, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIInterfaceOrientation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIInterfaceOrientation_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIInterfaceOrientation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIInterfaceOrientation \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIInterfaceOrientation \
    } org_xmlvm_iphone_UIInterfaceOrientation

struct org_xmlvm_iphone_UIInterfaceOrientation {
    __TIB_DEFINITION_org_xmlvm_iphone_UIInterfaceOrientation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIInterfaceOrientation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIInterfaceOrientation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIInterfaceOrientation
typedef struct org_xmlvm_iphone_UIInterfaceOrientation org_xmlvm_iphone_UIInterfaceOrientation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIInterfaceOrientation 11

void __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIInterfaceOrientation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIInterfaceOrientation();
JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_Portrait();
void org_xmlvm_iphone_UIInterfaceOrientation_PUT_Portrait(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_PortraitUpsideDown();
void org_xmlvm_iphone_UIInterfaceOrientation_PUT_PortraitUpsideDown(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_LandscapeLeft();
void org_xmlvm_iphone_UIInterfaceOrientation_PUT_LandscapeLeft(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_LandscapeRight();
void org_xmlvm_iphone_UIInterfaceOrientation_PUT_LandscapeRight(JAVA_INT v);
void org_xmlvm_iphone_UIInterfaceOrientation___INIT___(JAVA_OBJECT me);

#endif
