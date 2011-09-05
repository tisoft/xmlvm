#ifndef __ORG_XMLVM_IPHONE_UITABLEVIEWCELLSTYLE__
#define __ORG_XMLVM_IPHONE_UITABLEVIEWCELLSTYLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UITableViewCellStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITableViewCellStyle, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UITableViewCellStyle)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellStyle_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellStyle_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellStyle_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewCellStyle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewCellStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewCellStyle \
    } org_xmlvm_iphone_UITableViewCellStyle

struct org_xmlvm_iphone_UITableViewCellStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UITableViewCellStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewCellStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewCellStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewCellStyle
typedef struct org_xmlvm_iphone_UITableViewCellStyle org_xmlvm_iphone_UITableViewCellStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITableViewCellStyle 6

void __INIT_org_xmlvm_iphone_UITableViewCellStyle();
void __INIT_IMPL_org_xmlvm_iphone_UITableViewCellStyle();
void __DELETE_org_xmlvm_iphone_UITableViewCellStyle(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewCellStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCellStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellStyle();
JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Default();
void org_xmlvm_iphone_UITableViewCellStyle_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Value1();
void org_xmlvm_iphone_UITableViewCellStyle_PUT_Value1(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Value2();
void org_xmlvm_iphone_UITableViewCellStyle_PUT_Value2(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Subtitle();
void org_xmlvm_iphone_UITableViewCellStyle_PUT_Subtitle(JAVA_INT v);

#endif
