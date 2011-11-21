#ifndef __ORG_XMLVM_IPHONE_CGPDFPAGE__
#define __ORG_XMLVM_IPHONE_CGPDFPAGE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CFType.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGAffineTransform)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPDFDocument
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPDFDocument
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPDFDocument)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
// Class declarations for org.xmlvm.iphone.CGPDFPage
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGPDFPage, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGPDFPage)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFPage;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFPage_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFPage_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFPage_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPDFPage

void org_xmlvm_iphone_CGPDFPage_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, CFTypeRef wrappedCFTypeRef);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGPDFPage \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CFType; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPDFPage \
    } org_xmlvm_iphone_CGPDFPage

struct org_xmlvm_iphone_CGPDFPage {
    __TIB_DEFINITION_org_xmlvm_iphone_CGPDFPage* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGPDFPage;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPDFPage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPDFPage
typedef struct org_xmlvm_iphone_CGPDFPage org_xmlvm_iphone_CGPDFPage;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGPDFPage 8
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGPDFPage_retain__ 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGPDFPage_release__ 6

void __INIT_org_xmlvm_iphone_CGPDFPage();
void __INIT_IMPL_org_xmlvm_iphone_CGPDFPage();
void __DELETE_org_xmlvm_iphone_CGPDFPage(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGPDFPage(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPDFPage();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPDFPage();
JAVA_LONG org_xmlvm_iphone_CGPDFPage_getTypeID__();
void org_xmlvm_iphone_CGPDFPage___INIT___(JAVA_OBJECT me);
// Vtable index: 7
JAVA_OBJECT org_xmlvm_iphone_CGPDFPage_retain__(JAVA_OBJECT me);
// Vtable index: 6
void org_xmlvm_iphone_CGPDFPage_release__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CGPDFPage_getDocument__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_CGPDFPage_getPageNumber__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CGPDFPage_getBoxRect___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT org_xmlvm_iphone_CGPDFPage_getRotationAngle__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CGPDFPage_getDrawingTransform___int_org_xmlvm_iphone_CGRect_int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_BOOLEAN n4);

#endif
