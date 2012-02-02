#ifndef __ORG_XMLVM_IPHONE_CGPDFDOCUMENT__
#define __ORG_XMLVM_IPHONE_CGPDFDOCUMENT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CFType.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFURL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFURL
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CFURL)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGDataProvider)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPDFPage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPDFPage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPDFPage)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
// Class declarations for org.xmlvm.iphone.CGPDFDocument
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGPDFDocument, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGPDFDocument)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFDocument;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFDocument_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFDocument_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFDocument_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPDFDocument
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGPDFDocument \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CFType; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPDFDocument \
    } org_xmlvm_iphone_CGPDFDocument

struct org_xmlvm_iphone_CGPDFDocument {
    __TIB_DEFINITION_org_xmlvm_iphone_CGPDFDocument* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGPDFDocument;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPDFDocument
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPDFDocument
typedef struct org_xmlvm_iphone_CGPDFDocument org_xmlvm_iphone_CGPDFDocument;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGPDFDocument 8
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGPDFDocument_finalize_org_xmlvm_iphone_CGPDFDocument__ 2
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGPDFDocument_retain__ 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGPDFDocument_release__ 6

void __INIT_org_xmlvm_iphone_CGPDFDocument();
void __INIT_IMPL_org_xmlvm_iphone_CGPDFDocument();
void __DELETE_org_xmlvm_iphone_CGPDFDocument(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGPDFDocument(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPDFDocument();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPDFDocument();
// Vtable index: 2
void org_xmlvm_iphone_CGPDFDocument_finalize_org_xmlvm_iphone_CGPDFDocument__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_createWithProvider___org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_createWithURL___org_xmlvm_iphone_CFURL(JAVA_OBJECT n1);
JAVA_LONG org_xmlvm_iphone_CGPDFDocument_getTypeID__();
void org_xmlvm_iphone_CGPDFDocument___INIT___(JAVA_OBJECT me);
// Vtable index: 7
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_retain__(JAVA_OBJECT me);
// Vtable index: 6
void org_xmlvm_iphone_CGPDFDocument_release__(JAVA_OBJECT me);
void org_xmlvm_iphone_CGPDFDocument_getVersion___int_1ARRAY_int_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_isEncrypted__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_unlockWithPassword___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_isUnlocked__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_allowsPrinting__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_allowsCopying__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_CGPDFDocument_getNumberOfPages__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getPage___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getMediaBox___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getCropBox___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getBleedBox___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getTrimBox___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getArtBox___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT org_xmlvm_iphone_CGPDFDocument_getRotationAngle___int(JAVA_OBJECT me, JAVA_INT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGPDFDocument \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CFType \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGPDFDocument \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CFType \


#endif
