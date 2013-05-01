#ifndef __ORG_XMLVM_RUNTIME_EMSCRIPTEN_EMSCRIPTENUTIL__
#define __ORG_XMLVM_RUNTIME_EMSCRIPTEN_EMSCRIPTENUTIL__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Runnable
#define XMLVM_FORWARD_DECL_java_lang_Runnable
XMLVM_FORWARD_DECL(java_lang_Runnable)
#endif
// Class declarations for org.xmlvm.runtime.emscripten.EmscriptenUtil
XMLVM_DEFINE_CLASS(org_xmlvm_runtime_emscripten_EmscriptenUtil, 6, XMLVM_ITABLE_SIZE_org_xmlvm_runtime_emscripten_EmscriptenUtil)

extern JAVA_OBJECT __CLASS_org_xmlvm_runtime_emscripten_EmscriptenUtil;
extern JAVA_OBJECT __CLASS_org_xmlvm_runtime_emscripten_EmscriptenUtil_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_runtime_emscripten_EmscriptenUtil_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_runtime_emscripten_EmscriptenUtil_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_runtime_emscripten_EmscriptenUtil
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_runtime_emscripten_EmscriptenUtil \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_runtime_emscripten_EmscriptenUtil \
    } org_xmlvm_runtime_emscripten_EmscriptenUtil

struct org_xmlvm_runtime_emscripten_EmscriptenUtil {
    __TIB_DEFINITION_org_xmlvm_runtime_emscripten_EmscriptenUtil* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_runtime_emscripten_EmscriptenUtil;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_runtime_emscripten_EmscriptenUtil
#define XMLVM_FORWARD_DECL_org_xmlvm_runtime_emscripten_EmscriptenUtil
typedef struct org_xmlvm_runtime_emscripten_EmscriptenUtil org_xmlvm_runtime_emscripten_EmscriptenUtil;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_runtime_emscripten_EmscriptenUtil 6

void __INIT_org_xmlvm_runtime_emscripten_EmscriptenUtil();
void __INIT_IMPL_org_xmlvm_runtime_emscripten_EmscriptenUtil();
void __DELETE_org_xmlvm_runtime_emscripten_EmscriptenUtil(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_runtime_emscripten_EmscriptenUtil(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_runtime_emscripten_EmscriptenUtil();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_runtime_emscripten_EmscriptenUtil();
void org_xmlvm_runtime_emscripten_EmscriptenUtil___INIT___(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_runtime_emscripten_EmscriptenUtil_isEmscripten__();
void org_xmlvm_runtime_emscripten_EmscriptenUtil_setMainLoop___java_lang_Runnable(JAVA_OBJECT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_runtime_emscripten_EmscriptenUtil \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_runtime_emscripten_EmscriptenUtil \


#endif
