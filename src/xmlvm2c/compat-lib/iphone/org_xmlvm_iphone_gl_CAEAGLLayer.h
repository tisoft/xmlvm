#ifndef __ORG_XMLVM_IPHONE_GL_CAEAGLLAYER__
#define __ORG_XMLVM_IPHONE_GL_CAEAGLLAYER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_CALayer.h"
#include "org_xmlvm_iphone_gl_EAGLDrawable.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_EAGLDrawable
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_EAGLDrawable
XMLVM_FORWARD_DECL(org_xmlvm_iphone_gl_EAGLDrawable)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CALayer)
#endif
// Class declarations for org.xmlvm.iphone.gl.CAEAGLLayer
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_gl_CAEAGLLayer, 20, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_gl_CAEAGLLayer)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_gl_CAEAGLLayer
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_gl_CAEAGLLayer \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CALayer; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_gl_CAEAGLLayer \
    } org_xmlvm_iphone_gl_CAEAGLLayer

struct org_xmlvm_iphone_gl_CAEAGLLayer {
    __TIB_DEFINITION_org_xmlvm_iphone_gl_CAEAGLLayer* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_gl_CAEAGLLayer;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_CAEAGLLayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_CAEAGLLayer
typedef struct org_xmlvm_iphone_gl_CAEAGLLayer org_xmlvm_iphone_gl_CAEAGLLayer;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_gl_CAEAGLLayer 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_gl_CAEAGLLayer_getDrawable__ 19

void __INIT_org_xmlvm_iphone_gl_CAEAGLLayer();
void __INIT_IMPL_org_xmlvm_iphone_gl_CAEAGLLayer();
void __DELETE_org_xmlvm_iphone_gl_CAEAGLLayer(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_CAEAGLLayer(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_gl_CAEAGLLayer();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_gl_CAEAGLLayer();
void org_xmlvm_iphone_gl_CAEAGLLayer___INIT___(JAVA_OBJECT me);
// Vtable index: 19
JAVA_OBJECT org_xmlvm_iphone_gl_CAEAGLLayer_getDrawable__(JAVA_OBJECT me);

#endif
