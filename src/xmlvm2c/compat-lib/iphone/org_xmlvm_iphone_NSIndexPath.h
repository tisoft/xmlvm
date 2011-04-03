#ifndef __ORG_XMLVM_IPHONE_NSINDEXPATH__
#define __ORG_XMLVM_IPHONE_NSINDEXPATH__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.NSIndexPath
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSIndexPath, 13, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSIndexPath)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSIndexPath

void org_xmlvm_iphone_NSIndexPath_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSIndexPath \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSIndexPath \
    } org_xmlvm_iphone_NSIndexPath

struct org_xmlvm_iphone_NSIndexPath {
    __TIB_DEFINITION_org_xmlvm_iphone_NSIndexPath* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSIndexPath;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSIndexPath
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSIndexPath
typedef struct org_xmlvm_iphone_NSIndexPath org_xmlvm_iphone_NSIndexPath;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSIndexPath 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_getSection__ 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_getRow__ 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_setSection___int 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_setRow___int 12

void __INIT_org_xmlvm_iphone_NSIndexPath();
void __INIT_IMPL_org_xmlvm_iphone_NSIndexPath();
void __DELETE_org_xmlvm_iphone_NSIndexPath(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSIndexPath();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath();
void org_xmlvm_iphone_NSIndexPath___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int(JAVA_INT n1, JAVA_INT n2);
// Vtable index: 9
JAVA_INT org_xmlvm_iphone_NSIndexPath_getSection__(JAVA_OBJECT me);
// Vtable index: 10
JAVA_INT org_xmlvm_iphone_NSIndexPath_getRow__(JAVA_OBJECT me);
// Vtable index: 11
void org_xmlvm_iphone_NSIndexPath_setSection___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 12
void org_xmlvm_iphone_NSIndexPath_setRow___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
