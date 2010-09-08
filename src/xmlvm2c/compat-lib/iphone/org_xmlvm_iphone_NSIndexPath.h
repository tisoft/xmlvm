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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSIndexPath, 18)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSIndexPath
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSIndexPath \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSIndexPath \
    } org_xmlvm_iphone_NSIndexPath

struct org_xmlvm_iphone_NSIndexPath {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSIndexPath* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSIndexPath;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSIndexPath
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSIndexPath
typedef struct org_xmlvm_iphone_NSIndexPath org_xmlvm_iphone_NSIndexPath;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSIndexPath 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_getSection__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_getRow__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_setSection___int 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_setRow___int 17

void __INIT_org_xmlvm_iphone_NSIndexPath();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSIndexPath();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath();
void org_xmlvm_iphone_NSIndexPath___INIT___(JAVA_OBJECT me);
// Vtable index: 14
JAVA_INT org_xmlvm_iphone_NSIndexPath_getSection__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_INT org_xmlvm_iphone_NSIndexPath_getRow__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_NSIndexPath_setSection___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 17
void org_xmlvm_iphone_NSIndexPath_setRow___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
