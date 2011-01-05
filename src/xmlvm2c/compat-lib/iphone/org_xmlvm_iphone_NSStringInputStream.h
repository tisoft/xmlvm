#ifndef __ORG_XMLVM_IPHONE_NSSTRINGINPUTSTREAM__
#define __ORG_XMLVM_IPHONE_NSSTRINGINPUTSTREAM__

#include "xmlvm.h"
#include "java_io_InputStream.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_io_InputStream
#define XMLVM_FORWARD_DECL_java_io_InputStream
XMLVM_FORWARD_DECL(java_io_InputStream)
#endif
// Class declarations for org.xmlvm.iphone.NSStringInputStream
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSStringInputStream, 20)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringInputStream;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringInputStream_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSStringInputStream
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSStringInputStream \
    __INSTANCE_FIELDS_java_io_InputStream; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSStringInputStream \
    } org_xmlvm_iphone_NSStringInputStream

struct org_xmlvm_iphone_NSStringInputStream {
    __TIB_DEFINITION_org_xmlvm_iphone_NSStringInputStream* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSStringInputStream;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSStringInputStream
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSStringInputStream
typedef struct org_xmlvm_iphone_NSStringInputStream org_xmlvm_iphone_NSStringInputStream;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSStringInputStream 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_available__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_close__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_mark___int 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_markSupported__ 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE_int_int 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_reset__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_skip___long 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_read__ 11

void __INIT_org_xmlvm_iphone_NSStringInputStream();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSStringInputStream();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSStringInputStream();
void org_xmlvm_iphone_NSStringInputStream___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
JAVA_INT org_xmlvm_iphone_NSStringInputStream_available__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_NSStringInputStream_close__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_NSStringInputStream_mark___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 19
JAVA_BOOLEAN org_xmlvm_iphone_NSStringInputStream_markSupported__(JAVA_OBJECT me);
// Vtable index: 13
JAVA_INT org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3);
// Vtable index: 12
JAVA_INT org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 18
void org_xmlvm_iphone_NSStringInputStream_reset__(JAVA_OBJECT me);
// Vtable index: 14
JAVA_LONG org_xmlvm_iphone_NSStringInputStream_skip___long(JAVA_OBJECT me, JAVA_LONG n1);
// Vtable index: 11
JAVA_INT org_xmlvm_iphone_NSStringInputStream_read__(JAVA_OBJECT me);

#endif
