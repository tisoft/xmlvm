#ifndef __SDLJAVA_SDLTIMERID__
#define __SDLJAVA_SDLTIMERID__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for sdljava.SDLTimerID
XMLVM_DEFINE_CLASS(sdljava_SDLTimerID, 6, XMLVM_ITABLE_SIZE_sdljava_SDLTimerID)

extern JAVA_OBJECT __CLASS_sdljava_SDLTimerID;
extern JAVA_OBJECT __CLASS_sdljava_SDLTimerID_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_SDLTimerID_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_SDLTimerID_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_SDLTimerID
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_SDLTimerID \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_SDLTimerID \
    } sdljava_SDLTimerID

struct sdljava_SDLTimerID {
    __TIB_DEFINITION_sdljava_SDLTimerID* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_SDLTimerID;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_SDLTimerID
#define XMLVM_FORWARD_DECL_sdljava_SDLTimerID
typedef struct sdljava_SDLTimerID sdljava_SDLTimerID;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_SDLTimerID 6

void __INIT_sdljava_SDLTimerID();
void __INIT_IMPL_sdljava_SDLTimerID();
void __DELETE_sdljava_SDLTimerID(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_SDLTimerID(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_SDLTimerID();
JAVA_OBJECT __NEW_INSTANCE_sdljava_SDLTimerID();
void sdljava_SDLTimerID___INIT___(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_SDLTimerID \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_SDLTimerID \


#endif
