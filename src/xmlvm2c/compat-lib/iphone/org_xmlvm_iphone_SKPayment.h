#ifndef __ORG_XMLVM_IPHONE_SKPAYMENT__
#define __ORG_XMLVM_IPHONE_SKPAYMENT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPayment
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPayment
XMLVM_FORWARD_DECL(org_xmlvm_iphone_SKPayment)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.SKPayment
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKPayment, 17)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKPayment
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SKPayment \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKPayment \
    } org_xmlvm_iphone_SKPayment

struct org_xmlvm_iphone_SKPayment {
    __TIB_DEFINITION_org_xmlvm_iphone_SKPayment* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SKPayment;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPayment
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKPayment
typedef struct org_xmlvm_iphone_SKPayment org_xmlvm_iphone_SKPayment;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKPayment 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKPayment_getProductIdentifier__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKPayment_getQuantity__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKPayment_getRequestData__ 16

void __INIT_org_xmlvm_iphone_SKPayment();
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPayment();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPayment();
JAVA_OBJECT org_xmlvm_iphone_SKPayment_paymentWithProduct___org_xmlvm_iphone_SKProduct(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_SKPayment_paymentWithProductIdentifier___java_lang_String(JAVA_OBJECT n1);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_SKPayment_getProductIdentifier__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_INT org_xmlvm_iphone_SKPayment_getQuantity__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_OBJECT org_xmlvm_iphone_SKPayment_getRequestData__(JAVA_OBJECT me);

#endif
