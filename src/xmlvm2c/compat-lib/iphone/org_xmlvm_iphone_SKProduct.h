#ifndef __ORG_XMLVM_IPHONE_SKPRODUCT__
#define __ORG_XMLVM_IPHONE_SKPRODUCT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSLocale)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.SKProduct
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKProduct, 19)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKProduct
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SKProduct \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKProduct \
    } org_xmlvm_iphone_SKProduct

struct org_xmlvm_iphone_SKProduct {
    __TIB_DEFINITION_org_xmlvm_iphone_SKProduct* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SKProduct;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKProduct
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKProduct
typedef struct org_xmlvm_iphone_SKProduct org_xmlvm_iphone_SKProduct;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKProduct 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProduct_getLocalizedDescription__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProduct_getLocalizedTitle__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProduct_getPrice__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProduct_getPriceLocale__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProduct_getProductIdentifier__ 18

void __INIT_org_xmlvm_iphone_SKProduct();
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProduct();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProduct();
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_SKProduct_getLocalizedDescription__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_SKProduct_getLocalizedTitle__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_DOUBLE org_xmlvm_iphone_SKProduct_getPrice__(JAVA_OBJECT me);
// Vtable index: 17
JAVA_OBJECT org_xmlvm_iphone_SKProduct_getPriceLocale__(JAVA_OBJECT me);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_SKProduct_getProductIdentifier__(JAVA_OBJECT me);

#endif
