#ifndef __ORG_XMLVM_IPHONE_UITABLEVIEWSTYLE__
#define __ORG_XMLVM_IPHONE_UITABLEVIEWSTYLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UITableViewStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITableViewStyle, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UITableViewStyle)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewStyle_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewStyle_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewStyle_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewStyle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewStyle \
    } org_xmlvm_iphone_UITableViewStyle

struct org_xmlvm_iphone_UITableViewStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UITableViewStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewStyle
typedef struct org_xmlvm_iphone_UITableViewStyle org_xmlvm_iphone_UITableViewStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITableViewStyle 6

void __INIT_org_xmlvm_iphone_UITableViewStyle();
void __INIT_IMPL_org_xmlvm_iphone_UITableViewStyle();
void __DELETE_org_xmlvm_iphone_UITableViewStyle(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewStyle(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewStyle();
JAVA_INT org_xmlvm_iphone_UITableViewStyle_GET_Plain();
void org_xmlvm_iphone_UITableViewStyle_PUT_Plain(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewStyle_GET_Grouped();
void org_xmlvm_iphone_UITableViewStyle_PUT_Grouped(JAVA_INT v);

#endif
