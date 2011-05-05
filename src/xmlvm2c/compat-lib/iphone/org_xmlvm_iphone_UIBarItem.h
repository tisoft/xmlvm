#ifndef __ORG_XMLVM_IPHONE_UIBARITEM__
#define __ORG_XMLVM_IPHONE_UIBARITEM__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIImage)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEdgeInsets
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEdgeInsets
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIEdgeInsets)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UIBarItem
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIBarItem, 22, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIBarItem)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarItem;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarItem_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarItem_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarItem_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIBarItem

void org_xmlvm_iphone_UIBarItem_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj);
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIBarItem \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIBarItem \
    } org_xmlvm_iphone_UIBarItem

struct org_xmlvm_iphone_UIBarItem {
    __TIB_DEFINITION_org_xmlvm_iphone_UIBarItem* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIBarItem;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIBarItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIBarItem
typedef struct org_xmlvm_iphone_UIBarItem org_xmlvm_iphone_UIBarItem;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIBarItem 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getBar__ 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setBar___org_xmlvm_iphone_UIView 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_isEnabled__ 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setEnabled___boolean 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getImage__ 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setImage___org_xmlvm_iphone_UIImage 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getImageInsets__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setImageInsets___org_xmlvm_iphone_UIEdgeInsets 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getTitle__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setTitle___java_lang_String 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getTag__ 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setTag___int 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_updateViews__ 21

void __INIT_org_xmlvm_iphone_UIBarItem();
void __INIT_IMPL_org_xmlvm_iphone_UIBarItem();
void __DELETE_org_xmlvm_iphone_UIBarItem(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarItem(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarItem();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarItem();
void org_xmlvm_iphone_UIBarItem___INIT___(JAVA_OBJECT me);
// Vtable index: 9
JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getBar__(JAVA_OBJECT me);
// Vtable index: 10
void org_xmlvm_iphone_UIBarItem_setBar___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 11
JAVA_BOOLEAN org_xmlvm_iphone_UIBarItem_isEnabled__(JAVA_OBJECT me);
// Vtable index: 12
void org_xmlvm_iphone_UIBarItem_setEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 13
JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getImage__(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_UIBarItem_setImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getImageInsets__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_UIBarItem_setImageInsets___org_xmlvm_iphone_UIEdgeInsets(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 17
JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getTitle__(JAVA_OBJECT me);
// Vtable index: 18
void org_xmlvm_iphone_UIBarItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 19
JAVA_INT org_xmlvm_iphone_UIBarItem_getTag__(JAVA_OBJECT me);
// Vtable index: 20
void org_xmlvm_iphone_UIBarItem_setTag___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 21
void org_xmlvm_iphone_UIBarItem_updateViews__(JAVA_OBJECT me);

#endif
