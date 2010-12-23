#ifndef __ORG_XMLVM_IPHONE_UITABLEVIEWCELLEDITINGSTYLE__
#define __ORG_XMLVM_IPHONE_UITABLEVIEWCELLEDITINGSTYLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UITableViewCellEditingStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITableViewCellEditingStyle, 11)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewCellEditingStyle
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewCellEditingStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewCellEditingStyle \
    } org_xmlvm_iphone_UITableViewCellEditingStyle

struct org_xmlvm_iphone_UITableViewCellEditingStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UITableViewCellEditingStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewCellEditingStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewCellEditingStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewCellEditingStyle
typedef struct org_xmlvm_iphone_UITableViewCellEditingStyle org_xmlvm_iphone_UITableViewCellEditingStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITableViewCellEditingStyle 11

void __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCellEditingStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellEditingStyle();
JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_None();
void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_None(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_Delete();
void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_Delete(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_Insert();
void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_Insert(JAVA_INT v);
void org_xmlvm_iphone_UITableViewCellEditingStyle___INIT___(JAVA_OBJECT me);

#endif
