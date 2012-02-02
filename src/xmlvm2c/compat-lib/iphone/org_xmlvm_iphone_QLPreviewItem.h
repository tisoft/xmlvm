#ifndef __ORG_XMLVM_IPHONE_QLPREVIEWITEM__
#define __ORG_XMLVM_IPHONE_QLPREVIEWITEM__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURL)
#endif
// Class declarations for org.xmlvm.iphone.QLPreviewItem
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_QLPreviewItem, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_QLPreviewItem)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewItem;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewItem_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewItem_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewItem_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_QLPreviewItem
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_QLPreviewItem \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_QLPreviewItem \
    } org_xmlvm_iphone_QLPreviewItem

struct org_xmlvm_iphone_QLPreviewItem {
    __TIB_DEFINITION_org_xmlvm_iphone_QLPreviewItem* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_QLPreviewItem;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_QLPreviewItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_QLPreviewItem
typedef struct org_xmlvm_iphone_QLPreviewItem org_xmlvm_iphone_QLPreviewItem;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_QLPreviewItem 8
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_QLPreviewItem_getPreviewItemURL__ 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_QLPreviewItem_getPreviewItemTitle__ 6

void __INIT_org_xmlvm_iphone_QLPreviewItem();
void __INIT_IMPL_org_xmlvm_iphone_QLPreviewItem();
void __DELETE_org_xmlvm_iphone_QLPreviewItem(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewItem(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_QLPreviewItem();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_QLPreviewItem();
void org_xmlvm_iphone_QLPreviewItem___INIT___(JAVA_OBJECT me);
// Vtable index: 7
JAVA_OBJECT org_xmlvm_iphone_QLPreviewItem_getPreviewItemURL__(JAVA_OBJECT me);
// Vtable index: 6
JAVA_OBJECT org_xmlvm_iphone_QLPreviewItem_getPreviewItemTitle__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_QLPreviewItem \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_QLPreviewItem \


#endif
