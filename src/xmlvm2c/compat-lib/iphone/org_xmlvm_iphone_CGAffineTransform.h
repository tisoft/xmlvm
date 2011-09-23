#ifndef __ORG_XMLVM_IPHONE_CGAFFINETRANSFORM__
#define __ORG_XMLVM_IPHONE_CGAFFINETRANSFORM__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGAffineTransform)
#endif
// Class declarations for org.xmlvm.iphone.CGAffineTransform
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGAffineTransform, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGAffineTransform)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGAffineTransform;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGAffineTransform_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGAffineTransform_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGAffineTransform_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS

#import <UIKit/UIKit.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGAffineTransform \
    CGAffineTransform transform;
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGAffineTransform \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGAffineTransform \
    } org_xmlvm_iphone_CGAffineTransform

struct org_xmlvm_iphone_CGAffineTransform {
    __TIB_DEFINITION_org_xmlvm_iphone_CGAffineTransform* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGAffineTransform;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
typedef struct org_xmlvm_iphone_CGAffineTransform org_xmlvm_iphone_CGAffineTransform;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGAffineTransform 6

void __INIT_org_xmlvm_iphone_CGAffineTransform();
void __INIT_IMPL_org_xmlvm_iphone_CGAffineTransform();
void __DELETE_org_xmlvm_iphone_CGAffineTransform(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGAffineTransform();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGAffineTransform();
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_make___float_float_float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4, JAVA_FLOAT n5, JAVA_FLOAT n6);
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeRotation___float(JAVA_FLOAT n1);
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeScale___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2);
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeTranslation___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2);
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_rotate___org_xmlvm_iphone_CGAffineTransform_float(JAVA_OBJECT n1, JAVA_FLOAT n2);
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_scale___org_xmlvm_iphone_CGAffineTransform_float_float(JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3);
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_translate___org_xmlvm_iphone_CGAffineTransform_float_float(JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3);
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_concat___org_xmlvm_iphone_CGAffineTransform_org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_identity__();

#endif
