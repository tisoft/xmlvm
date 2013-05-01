#ifndef __SDLJAVA_TTF_SDLTTF__
#define __SDLJAVA_TTF_SDLTTF__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_sdljava_ttf_SDLTrueTypeFont
#define XMLVM_FORWARD_DECL_sdljava_ttf_SDLTrueTypeFont
XMLVM_FORWARD_DECL(sdljava_ttf_SDLTrueTypeFont)
#endif
// Class declarations for sdljava.ttf.SDLTTF
XMLVM_DEFINE_CLASS(sdljava_ttf_SDLTTF, 6, XMLVM_ITABLE_SIZE_sdljava_ttf_SDLTTF)

extern JAVA_OBJECT __CLASS_sdljava_ttf_SDLTTF;
extern JAVA_OBJECT __CLASS_sdljava_ttf_SDLTTF_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_ttf_SDLTTF_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_ttf_SDLTTF_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_ttf_SDLTTF
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_ttf_SDLTTF \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_ttf_SDLTTF \
    } sdljava_ttf_SDLTTF

struct sdljava_ttf_SDLTTF {
    __TIB_DEFINITION_sdljava_ttf_SDLTTF* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_ttf_SDLTTF;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_ttf_SDLTTF
#define XMLVM_FORWARD_DECL_sdljava_ttf_SDLTTF
typedef struct sdljava_ttf_SDLTTF sdljava_ttf_SDLTTF;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_ttf_SDLTTF 6

void __INIT_sdljava_ttf_SDLTTF();
void __INIT_IMPL_sdljava_ttf_SDLTTF();
void __DELETE_sdljava_ttf_SDLTTF(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_ttf_SDLTTF(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_ttf_SDLTTF();
JAVA_OBJECT __NEW_INSTANCE_sdljava_ttf_SDLTTF();
void sdljava_ttf_SDLTTF___INIT___(JAVA_OBJECT me);
void sdljava_ttf_SDLTTF_init__();
JAVA_OBJECT sdljava_ttf_SDLTTF_openFont___java_lang_String_int(JAVA_OBJECT n1, JAVA_INT n2);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_ttf_SDLTTF \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_ttf_SDLTTF \


#endif
