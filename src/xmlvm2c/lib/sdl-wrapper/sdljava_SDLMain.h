#ifndef __SDLJAVA_SDLMAIN__
#define __SDLJAVA_SDLMAIN__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for sdljava.SDLMain
XMLVM_DEFINE_CLASS(sdljava_SDLMain, 6, XMLVM_ITABLE_SIZE_sdljava_SDLMain)

extern JAVA_OBJECT __CLASS_sdljava_SDLMain;
extern JAVA_OBJECT __CLASS_sdljava_SDLMain_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_SDLMain_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_SDLMain_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_SDLMain
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_SDLMain \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_SDLMain \
    } sdljava_SDLMain

struct sdljava_SDLMain {
    __TIB_DEFINITION_sdljava_SDLMain* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_SDLMain;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_SDLMain
#define XMLVM_FORWARD_DECL_sdljava_SDLMain
typedef struct sdljava_SDLMain sdljava_SDLMain;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_SDLMain 6

void __INIT_sdljava_SDLMain();
void __INIT_IMPL_sdljava_SDLMain();
void __DELETE_sdljava_SDLMain(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_SDLMain(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_SDLMain();
JAVA_OBJECT __NEW_INSTANCE_sdljava_SDLMain();
void sdljava_SDLMain___INIT___(JAVA_OBJECT me);
void sdljava_SDLMain_init___long(JAVA_LONG n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_SDLMain \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_SDLMain \


#endif
