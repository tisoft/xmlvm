#ifndef __ORG_XMLVM_IPHONE_CGRECT__
#define __ORG_XMLVM_IPHONE_CGRECT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPoint)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
// Class declarations for org.xmlvm.iphone.CGRect
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGRect, 12, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGRect)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGRect;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGRect_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGRect_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGRect_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS

#import <CoreGraphics/CoreGraphics.h>

CGRect toCGRect(void* rect);
JAVA_OBJECT fromCGRect(CGRect rect);

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGRect
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGRect \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT origin_; \
        JAVA_OBJECT size_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGRect \
    } org_xmlvm_iphone_CGRect

struct org_xmlvm_iphone_CGRect {
    __TIB_DEFINITION_org_xmlvm_iphone_CGRect* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGRect;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
typedef struct org_xmlvm_iphone_CGRect org_xmlvm_iphone_CGRect;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGRect 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGRect_isNull__ 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGRect_isEmpty__ 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGRect_isInfinite__ 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGRect_toString__ 5
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGRect_equals___java_lang_Object 1

void __INIT_org_xmlvm_iphone_CGRect();
void __INIT_IMPL_org_xmlvm_iphone_CGRect();
void __DELETE_org_xmlvm_iphone_CGRect(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGRect(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGRect();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGRect();
void org_xmlvm_iphone_CGRect___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4);
void org_xmlvm_iphone_CGRect___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_CGRect_Null__();
JAVA_OBJECT org_xmlvm_iphone_CGRect_Zero__();
JAVA_OBJECT org_xmlvm_iphone_CGRect_Infinite__();
JAVA_OBJECT org_xmlvm_iphone_CGRect_Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect(JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 9
JAVA_BOOLEAN org_xmlvm_iphone_CGRect_isNull__(JAVA_OBJECT me);
// Vtable index: 10
JAVA_BOOLEAN org_xmlvm_iphone_CGRect_isEmpty__(JAVA_OBJECT me);
// Vtable index: 11
JAVA_BOOLEAN org_xmlvm_iphone_CGRect_isInfinite__(JAVA_OBJECT me);
// Vtable index: 5
JAVA_OBJECT org_xmlvm_iphone_CGRect_toString__(JAVA_OBJECT me);
// Vtable index: 1
JAVA_BOOLEAN org_xmlvm_iphone_CGRect_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_CGRect___CLINIT_();

#endif
