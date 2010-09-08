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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITableViewStyle, 11)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewStyle
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewStyle \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewStyle \
    } org_xmlvm_iphone_UITableViewStyle

struct org_xmlvm_iphone_UITableViewStyle {
    __CLASS_DEFINITION_org_xmlvm_iphone_UITableViewStyle* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewStyle;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewStyle
typedef struct org_xmlvm_iphone_UITableViewStyle org_xmlvm_iphone_UITableViewStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITableViewStyle 11

void __INIT_org_xmlvm_iphone_UITableViewStyle();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewStyle();
JAVA_INT org_xmlvm_iphone_UITableViewStyle_GET_Plain();
void org_xmlvm_iphone_UITableViewStyle_PUT_Plain(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewStyle_GET_Grouped();
void org_xmlvm_iphone_UITableViewStyle_PUT_Grouped(JAVA_INT v);
void org_xmlvm_iphone_UITableViewStyle___INIT___(JAVA_OBJECT me);

#endif
