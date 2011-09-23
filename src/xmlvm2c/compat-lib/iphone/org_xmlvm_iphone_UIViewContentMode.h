#ifndef __ORG_XMLVM_IPHONE_UIVIEWCONTENTMODE__
#define __ORG_XMLVM_IPHONE_UIVIEWCONTENTMODE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIViewContentMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIViewContentMode, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIViewContentMode)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewContentMode;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewContentMode_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewContentMode_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewContentMode_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewContentMode
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewContentMode \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewContentMode \
    } org_xmlvm_iphone_UIViewContentMode

struct org_xmlvm_iphone_UIViewContentMode {
    __TIB_DEFINITION_org_xmlvm_iphone_UIViewContentMode* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewContentMode;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewContentMode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewContentMode
typedef struct org_xmlvm_iphone_UIViewContentMode org_xmlvm_iphone_UIViewContentMode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIViewContentMode 6

void __INIT_org_xmlvm_iphone_UIViewContentMode();
void __INIT_IMPL_org_xmlvm_iphone_UIViewContentMode();
void __DELETE_org_xmlvm_iphone_UIViewContentMode(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewContentMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewContentMode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewContentMode();
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleToFill();
void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleToFill(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleAspectFit();
void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleAspectFit(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleAspectFill();
void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleAspectFill(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Redraw();
void org_xmlvm_iphone_UIViewContentMode_PUT_Redraw(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Center();
void org_xmlvm_iphone_UIViewContentMode_PUT_Center(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Top();
void org_xmlvm_iphone_UIViewContentMode_PUT_Top(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Bottom();
void org_xmlvm_iphone_UIViewContentMode_PUT_Bottom(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Left();
void org_xmlvm_iphone_UIViewContentMode_PUT_Left(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Right();
void org_xmlvm_iphone_UIViewContentMode_PUT_Right(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_TopLeft();
void org_xmlvm_iphone_UIViewContentMode_PUT_TopLeft(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_TopRight();
void org_xmlvm_iphone_UIViewContentMode_PUT_TopRight(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_BottomLeft();
void org_xmlvm_iphone_UIViewContentMode_PUT_BottomLeft(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_BottomRight();
void org_xmlvm_iphone_UIViewContentMode_PUT_BottomRight(JAVA_INT v);

#endif
