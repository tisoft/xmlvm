#ifndef __ORG_XMLVM_IPHONE_UIDATEPICKERMODE__
#define __ORG_XMLVM_IPHONE_UIDATEPICKERMODE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIDatePickerMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIDatePickerMode, 11)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDatePickerMode
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIDatePickerMode \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDatePickerMode \
    } org_xmlvm_iphone_UIDatePickerMode

struct org_xmlvm_iphone_UIDatePickerMode {
    __TIB_DEFINITION_org_xmlvm_iphone_UIDatePickerMode* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIDatePickerMode;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDatePickerMode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDatePickerMode
typedef struct org_xmlvm_iphone_UIDatePickerMode org_xmlvm_iphone_UIDatePickerMode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIDatePickerMode 11

void __INIT_org_xmlvm_iphone_UIDatePickerMode();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDatePickerMode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDatePickerMode();
JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_Time();
void org_xmlvm_iphone_UIDatePickerMode_PUT_Time(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_Date();
void org_xmlvm_iphone_UIDatePickerMode_PUT_Date(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_DateAndTime();
void org_xmlvm_iphone_UIDatePickerMode_PUT_DateAndTime(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDatePickerMode_GET_CountDownTimer();
void org_xmlvm_iphone_UIDatePickerMode_PUT_CountDownTimer(JAVA_INT v);
void org_xmlvm_iphone_UIDatePickerMode___INIT___(JAVA_OBJECT me);

#endif
