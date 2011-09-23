#ifndef __ORG_XMLVM_IPHONE_GL_BUFFERUTILS__
#define __ORG_XMLVM_IPHONE_GL_BUFFERUTILS__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_nio_ByteBuffer
#define XMLVM_FORWARD_DECL_java_nio_ByteBuffer
XMLVM_FORWARD_DECL(java_nio_ByteBuffer)
#endif
#ifndef XMLVM_FORWARD_DECL_java_nio_FloatBuffer
#define XMLVM_FORWARD_DECL_java_nio_FloatBuffer
XMLVM_FORWARD_DECL(java_nio_FloatBuffer)
#endif
#ifndef XMLVM_FORWARD_DECL_java_nio_IntBuffer
#define XMLVM_FORWARD_DECL_java_nio_IntBuffer
XMLVM_FORWARD_DECL(java_nio_IntBuffer)
#endif
// Class declarations for org.xmlvm.iphone.gl.BufferUtils
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_gl_BufferUtils, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_gl_BufferUtils)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_BufferUtils;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_BufferUtils_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_BufferUtils_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_BufferUtils_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_gl_BufferUtils
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_gl_BufferUtils \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_gl_BufferUtils \
    } org_xmlvm_iphone_gl_BufferUtils

struct org_xmlvm_iphone_gl_BufferUtils {
    __TIB_DEFINITION_org_xmlvm_iphone_gl_BufferUtils* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_gl_BufferUtils;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_BufferUtils
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_gl_BufferUtils
typedef struct org_xmlvm_iphone_gl_BufferUtils org_xmlvm_iphone_gl_BufferUtils;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_gl_BufferUtils 6

void __INIT_org_xmlvm_iphone_gl_BufferUtils();
void __INIT_IMPL_org_xmlvm_iphone_gl_BufferUtils();
void __DELETE_org_xmlvm_iphone_gl_BufferUtils(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_BufferUtils(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_gl_BufferUtils();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_gl_BufferUtils();
void org_xmlvm_iphone_gl_BufferUtils___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_gl_BufferUtils_createByteBuffer___int(JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_gl_BufferUtils_createIntBuffer___int(JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_gl_BufferUtils_createFloatBuffer___int(JAVA_INT n1);

#endif
