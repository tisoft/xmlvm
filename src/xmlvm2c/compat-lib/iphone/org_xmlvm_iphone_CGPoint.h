#ifndef __ORG_XMLVM_IPHONE_CGPOINT__
#define __ORG_XMLVM_IPHONE_CGPOINT__

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
// Class declarations for org.xmlvm.iphone.CGPoint
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGPoint, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGPoint)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPoint;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPoint_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPoint_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPoint_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS

#import <CoreGraphics/CoreGraphics.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPoint

CGPoint toCGPoint(JAVA_OBJECT point);
JAVA_OBJECT fromCGPoint(CGPoint point);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGPoint \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_FLOAT x_; \
        JAVA_FLOAT y_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPoint \
    } org_xmlvm_iphone_CGPoint

struct org_xmlvm_iphone_CGPoint {
    __TIB_DEFINITION_org_xmlvm_iphone_CGPoint* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGPoint;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
typedef struct org_xmlvm_iphone_CGPoint org_xmlvm_iphone_CGPoint;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGPoint 6
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGPoint_toString__ 5
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGPoint_equals___java_lang_Object 1

void __INIT_org_xmlvm_iphone_CGPoint();
void __INIT_IMPL_org_xmlvm_iphone_CGPoint();
void __DELETE_org_xmlvm_iphone_CGPoint(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGPoint(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPoint();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPoint();
void org_xmlvm_iphone_CGPoint___INIT____org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_CGPoint___INIT____float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 5
JAVA_OBJECT org_xmlvm_iphone_CGPoint_toString__(JAVA_OBJECT me);
// Vtable index: 1
JAVA_BOOLEAN org_xmlvm_iphone_CGPoint_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
