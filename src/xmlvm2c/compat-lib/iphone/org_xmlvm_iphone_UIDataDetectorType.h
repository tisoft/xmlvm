#ifndef __ORG_XMLVM_IPHONE_UIDATADETECTORTYPE__
#define __ORG_XMLVM_IPHONE_UIDATADETECTORTYPE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIDataDetectorType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIDataDetectorType, 11)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDataDetectorType
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIDataDetectorType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDataDetectorType \
    } org_xmlvm_iphone_UIDataDetectorType

struct org_xmlvm_iphone_UIDataDetectorType {
    __TIB_DEFINITION_org_xmlvm_iphone_UIDataDetectorType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIDataDetectorType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDataDetectorType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDataDetectorType
typedef struct org_xmlvm_iphone_UIDataDetectorType org_xmlvm_iphone_UIDataDetectorType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIDataDetectorType 11

void __INIT_org_xmlvm_iphone_UIDataDetectorType();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDataDetectorType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDataDetectorType();
JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_PhoneNumber();
void org_xmlvm_iphone_UIDataDetectorType_PUT_PhoneNumber(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_Link();
void org_xmlvm_iphone_UIDataDetectorType_PUT_Link(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_Address();
void org_xmlvm_iphone_UIDataDetectorType_PUT_Address(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_CalendarEvent();
void org_xmlvm_iphone_UIDataDetectorType_PUT_CalendarEvent(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_None();
void org_xmlvm_iphone_UIDataDetectorType_PUT_None(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_All();
void org_xmlvm_iphone_UIDataDetectorType_PUT_All(JAVA_INT v);
void org_xmlvm_iphone_UIDataDetectorType___INIT___(JAVA_OBJECT me);

#endif
