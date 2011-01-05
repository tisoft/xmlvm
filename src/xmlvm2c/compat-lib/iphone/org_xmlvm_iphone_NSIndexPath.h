#ifndef __ORG_XMLVM_IPHONE_NSINDEXPATH__
#define __ORG_XMLVM_IPHONE_NSINDEXPATH__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSIndexPath
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSIndexPath
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSIndexPath)
#endif
// Class declarations for org.xmlvm.iphone.NSIndexPath
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSIndexPath, 18)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSIndexPath
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSIndexPath 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_getSection__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_getRow__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_setSection___int 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSIndexPath_setRow___int 17

void __INIT_org_xmlvm_iphone_NSIndexPath();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSIndexPath();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath();
void org_xmlvm_iphone_NSIndexPath___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int(JAVA_INT n1, JAVA_INT n2);
// Vtable index: 14
JAVA_INT org_xmlvm_iphone_NSIndexPath_getSection__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_INT org_xmlvm_iphone_NSIndexPath_getRow__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_NSIndexPath_setSection___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 17
void org_xmlvm_iphone_NSIndexPath_setRow___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
