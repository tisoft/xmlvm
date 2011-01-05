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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIBarItem, 27)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarItem;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarItem_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIBarItem
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIBarItem 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getBar__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setBar___org_xmlvm_iphone_UIView 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_isEnabled__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setEnabled___boolean 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getImage__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setImage___org_xmlvm_iphone_UIImage 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getImageInsets__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setImageInsets___org_xmlvm_iphone_UIEdgeInsets 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getTitle__ 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setTitle___java_lang_String 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_getTag__ 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_setTag___int 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIBarItem_updateViews__ 26

void __INIT_org_xmlvm_iphone_UIBarItem();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarItem();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarItem();
void org_xmlvm_iphone_UIBarItem___INIT___(JAVA_OBJECT me);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getBar__(JAVA_OBJECT me);
// Vtable index: 15
void org_xmlvm_iphone_UIBarItem_setBar___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 16
JAVA_BOOLEAN org_xmlvm_iphone_UIBarItem_isEnabled__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_UIBarItem_setEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getImage__(JAVA_OBJECT me);
// Vtable index: 19
void org_xmlvm_iphone_UIBarItem_setImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 20
JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getImageInsets__(JAVA_OBJECT me);
// Vtable index: 21
void org_xmlvm_iphone_UIBarItem_setImageInsets___org_xmlvm_iphone_UIEdgeInsets(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 22
JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getTitle__(JAVA_OBJECT me);
// Vtable index: 23
void org_xmlvm_iphone_UIBarItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 24
JAVA_INT org_xmlvm_iphone_UIBarItem_getTag__(JAVA_OBJECT me);
// Vtable index: 25
void org_xmlvm_iphone_UIBarItem_setTag___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 26
void org_xmlvm_iphone_UIBarItem_updateViews__(JAVA_OBJECT me);

#endif
