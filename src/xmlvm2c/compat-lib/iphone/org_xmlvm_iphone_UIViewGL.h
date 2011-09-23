#ifndef __ORG_XMLVM_IPHONE_UIVIEWGL__
#define __ORG_XMLVM_IPHONE_UIVIEWGL__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_CAEAGLLayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_CAEAGLLayer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_gl_CAEAGLLayer)
#endif
// Class declarations for org.xmlvm.iphone.UIViewGL
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIViewGL, 13, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIViewGL)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewGL;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewGL_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewGL_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewGL_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewGL

void org_xmlvm_iphone_UIViewGL_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewGL \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewGL \
    } org_xmlvm_iphone_UIViewGL

struct org_xmlvm_iphone_UIViewGL {
    __TIB_DEFINITION_org_xmlvm_iphone_UIViewGL* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewGL;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewGL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewGL
typedef struct org_xmlvm_iphone_UIViewGL org_xmlvm_iphone_UIViewGL;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIViewGL 13

void __INIT_org_xmlvm_iphone_UIViewGL();
void __INIT_IMPL_org_xmlvm_iphone_UIViewGL();
void __DELETE_org_xmlvm_iphone_UIViewGL(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewGL(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewGL();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewGL();
void org_xmlvm_iphone_UIViewGL___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIViewGL___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIViewGL_getEAGLLayer__(JAVA_OBJECT me);

#endif
