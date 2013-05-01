#ifndef __SDLJAVA_SDLTIMER__
#define __SDLJAVA_SDLTIMER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for sdljava.SDLTimer
XMLVM_DEFINE_CLASS(sdljava_SDLTimer, 6, XMLVM_ITABLE_SIZE_sdljava_SDLTimer)

extern JAVA_OBJECT __CLASS_sdljava_SDLTimer;
extern JAVA_OBJECT __CLASS_sdljava_SDLTimer_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_SDLTimer_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_SDLTimer_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_SDLTimer
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_SDLTimer \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_SDLTimer \
    } sdljava_SDLTimer

struct sdljava_SDLTimer {
    __TIB_DEFINITION_sdljava_SDLTimer* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_SDLTimer;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_SDLTimer
#define XMLVM_FORWARD_DECL_sdljava_SDLTimer
typedef struct sdljava_SDLTimer sdljava_SDLTimer;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_SDLTimer 6

void __INIT_sdljava_SDLTimer();
void __INIT_IMPL_sdljava_SDLTimer();
void __DELETE_sdljava_SDLTimer(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_SDLTimer(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_SDLTimer();
JAVA_OBJECT __NEW_INSTANCE_sdljava_SDLTimer();
void sdljava_SDLTimer___INIT___(JAVA_OBJECT me);
void sdljava_SDLTimer_delay___long(JAVA_LONG n1);
JAVA_LONG sdljava_SDLTimer_getTicks__();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_SDLTimer \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_SDLTimer \


#endif
