#ifndef __ORG_XMLVM_IPHONE_NSSTRINGINPUTSTREAM__
#define __ORG_XMLVM_IPHONE_NSSTRINGINPUTSTREAM__

#include "xmlvm.h"
#include "java_io_InputStream.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_io_InputStream
#define XMLVM_FORWARD_DECL_java_io_InputStream
XMLVM_FORWARD_DECL(java_io_InputStream)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSStringInputStream
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSStringInputStream, 15, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSStringInputStream)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringInputStream;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringInputStream_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringInputStream_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringInputStream_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSStringInputStream 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_available__ 6
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_close__ 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_mark___int 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_markSupported__ 8
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_read___byte_1ARRAY_int_int 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_read___byte_1ARRAY 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_reset__ 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_skip___long 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSStringInputStream_read__ 10

void __INIT_org_xmlvm_iphone_NSStringInputStream();
void __INIT_IMPL_org_xmlvm_iphone_NSStringInputStream();
void __DELETE_org_xmlvm_iphone_NSStringInputStream(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSStringInputStream(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSStringInputStream();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSStringInputStream();
void org_xmlvm_iphone_NSStringInputStream___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 6
JAVA_INT org_xmlvm_iphone_NSStringInputStream_available__(JAVA_OBJECT me);
// Vtable index: 7
void org_xmlvm_iphone_NSStringInputStream_close__(JAVA_OBJECT me);
// Vtable index: 9
void org_xmlvm_iphone_NSStringInputStream_mark___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 8
JAVA_BOOLEAN org_xmlvm_iphone_NSStringInputStream_markSupported__(JAVA_OBJECT me);
// Vtable index: 12
JAVA_INT org_xmlvm_iphone_NSStringInputStream_read___byte_1ARRAY_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3);
// Vtable index: 11
JAVA_INT org_xmlvm_iphone_NSStringInputStream_read___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 13
void org_xmlvm_iphone_NSStringInputStream_reset__(JAVA_OBJECT me);
// Vtable index: 14
JAVA_LONG org_xmlvm_iphone_NSStringInputStream_skip___long(JAVA_OBJECT me, JAVA_LONG n1);
// Vtable index: 10
JAVA_INT org_xmlvm_iphone_NSStringInputStream_read__(JAVA_OBJECT me);

#endif
