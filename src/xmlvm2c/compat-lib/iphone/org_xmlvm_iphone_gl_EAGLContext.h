#ifndef __ORG_XMLVM_IPHONE_GL_EAGLCONTEXT__
#define __ORG_XMLVM_IPHONE_GL_EAGLCONTEXT__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_EAGLContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_EAGLContext
XMLVM_FORWARD_DECL(org_xmlvm_iphone_gl_EAGLContext)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_EAGLDrawable
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_EAGLDrawable
XMLVM_FORWARD_DECL(org_xmlvm_iphone_gl_EAGLDrawable)
#endif
// Class declarations for org.xmlvm.iphone.gl.EAGLContext
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_gl_EAGLContext, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_gl_EAGLContext)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLContext;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLContext_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLContext_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLContext_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_gl_EAGLContext
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_gl_EAGLContext \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_gl_EAGLContext \
    } org_xmlvm_iphone_gl_EAGLContext

struct org_xmlvm_iphone_gl_EAGLContext {
    __TIB_DEFINITION_org_xmlvm_iphone_gl_EAGLContext* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_gl_EAGLContext;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_EAGLContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_EAGLContext
typedef struct org_xmlvm_iphone_gl_EAGLContext org_xmlvm_iphone_gl_EAGLContext;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_gl_EAGLContext 6

void __INIT_org_xmlvm_iphone_gl_EAGLContext();
void __INIT_IMPL_org_xmlvm_iphone_gl_EAGLContext();
void __DELETE_org_xmlvm_iphone_gl_EAGLContext(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_EAGLContext(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_gl_EAGLContext();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_gl_EAGLContext();
JAVA_INT org_xmlvm_iphone_gl_EAGLContext_GET_kEAGLRenderingAPIOpenGLES1();
void org_xmlvm_iphone_gl_EAGLContext_PUT_kEAGLRenderingAPIOpenGLES1(JAVA_INT v);
void org_xmlvm_iphone_gl_EAGLContext_setCurrentContext___org_xmlvm_iphone_gl_EAGLContext(JAVA_OBJECT n1);
void org_xmlvm_iphone_gl_EAGLContext___INIT____int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_gl_EAGLContext_presentRenderBuffer___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_gl_EAGLContext_release__(JAVA_OBJECT me);
void org_xmlvm_iphone_gl_EAGLContext_renderBufferStorage___int_org_xmlvm_iphone_gl_EAGLDrawable(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2);

#endif
