#ifndef __ORG_XMLVM_IPHONE_CGBITMAPINFO__
#define __ORG_XMLVM_IPHONE_CGBITMAPINFO__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CGBitmapInfo
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGBitmapInfo, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGBitmapInfo)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapInfo;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapInfo_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapInfo_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapInfo_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapInfo
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapInfo \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapInfo \
    } org_xmlvm_iphone_CGBitmapInfo

struct org_xmlvm_iphone_CGBitmapInfo {
    __TIB_DEFINITION_org_xmlvm_iphone_CGBitmapInfo* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapInfo;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapInfo
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapInfo
typedef struct org_xmlvm_iphone_CGBitmapInfo org_xmlvm_iphone_CGBitmapInfo;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGBitmapInfo 6

void __INIT_org_xmlvm_iphone_CGBitmapInfo();
void __INIT_IMPL_org_xmlvm_iphone_CGBitmapInfo();
void __DELETE_org_xmlvm_iphone_CGBitmapInfo(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapInfo(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGBitmapInfo();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapInfo();
JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapAlphaInfoMask();
void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapAlphaInfoMask(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapFloatComponents();
void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapFloatComponents(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrderMask();
void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrderMask(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrderDefault();
void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrderDefault(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrder16Little();
void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrder16Little(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrder32Little();
void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrder32Little(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrder16Big();
void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrder16Big(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrder32Big();
void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrder32Big(JAVA_INT v);

#endif
