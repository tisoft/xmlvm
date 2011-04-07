#ifndef __ORG_XMLVM_IPHONE_MKPINANNOTATIONCOLOR__
#define __ORG_XMLVM_IPHONE_MKPINANNOTATIONCOLOR__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.MKPinAnnotationColor
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKPinAnnotationColor, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_MKPinAnnotationColor)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPinAnnotationColor;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKPinAnnotationColor
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MKPinAnnotationColor \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKPinAnnotationColor \
    } org_xmlvm_iphone_MKPinAnnotationColor

struct org_xmlvm_iphone_MKPinAnnotationColor {
    __TIB_DEFINITION_org_xmlvm_iphone_MKPinAnnotationColor* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MKPinAnnotationColor;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKPinAnnotationColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKPinAnnotationColor
typedef struct org_xmlvm_iphone_MKPinAnnotationColor org_xmlvm_iphone_MKPinAnnotationColor;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKPinAnnotationColor 6

void __INIT_org_xmlvm_iphone_MKPinAnnotationColor();
void __INIT_IMPL_org_xmlvm_iphone_MKPinAnnotationColor();
void __DELETE_org_xmlvm_iphone_MKPinAnnotationColor(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKPinAnnotationColor(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKPinAnnotationColor();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKPinAnnotationColor();
JAVA_INT org_xmlvm_iphone_MKPinAnnotationColor_GET_Red();
void org_xmlvm_iphone_MKPinAnnotationColor_PUT_Red(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MKPinAnnotationColor_GET_Green();
void org_xmlvm_iphone_MKPinAnnotationColor_PUT_Green(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MKPinAnnotationColor_GET_Purple();
void org_xmlvm_iphone_MKPinAnnotationColor_PUT_Purple(JAVA_INT v);

#endif
