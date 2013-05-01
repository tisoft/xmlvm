#ifndef __SDLJAVA_EVENT_SDLMOUSEBUTTONEVENT__
#define __SDLJAVA_EVENT_SDLMOUSEBUTTONEVENT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "sdljava_event_SDLEvent.h"

// Circular references:
// Class declarations for sdljava.event.SDLMouseButtonEvent
XMLVM_DEFINE_CLASS(sdljava_event_SDLMouseButtonEvent, 6, XMLVM_ITABLE_SIZE_sdljava_event_SDLMouseButtonEvent)

extern JAVA_OBJECT __CLASS_sdljava_event_SDLMouseButtonEvent;
extern JAVA_OBJECT __CLASS_sdljava_event_SDLMouseButtonEvent_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_event_SDLMouseButtonEvent_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_event_SDLMouseButtonEvent_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_event_SDLMouseButtonEvent
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_event_SDLMouseButtonEvent \
    __INSTANCE_FIELDS_sdljava_event_SDLEvent; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_event_SDLMouseButtonEvent \
    } sdljava_event_SDLMouseButtonEvent

struct sdljava_event_SDLMouseButtonEvent {
    __TIB_DEFINITION_sdljava_event_SDLMouseButtonEvent* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_event_SDLMouseButtonEvent;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_event_SDLMouseButtonEvent
#define XMLVM_FORWARD_DECL_sdljava_event_SDLMouseButtonEvent
typedef struct sdljava_event_SDLMouseButtonEvent sdljava_event_SDLMouseButtonEvent;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_event_SDLMouseButtonEvent 6

void __INIT_sdljava_event_SDLMouseButtonEvent();
void __INIT_IMPL_sdljava_event_SDLMouseButtonEvent();
void __DELETE_sdljava_event_SDLMouseButtonEvent(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_event_SDLMouseButtonEvent(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_event_SDLMouseButtonEvent();
JAVA_OBJECT __NEW_INSTANCE_sdljava_event_SDLMouseButtonEvent();
void sdljava_event_SDLMouseButtonEvent___INIT___(JAVA_OBJECT me);
JAVA_INT sdljava_event_SDLMouseButtonEvent_getX__(JAVA_OBJECT me);
JAVA_INT sdljava_event_SDLMouseButtonEvent_getY__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_event_SDLMouseButtonEvent \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_event_SDLEvent \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_event_SDLMouseButtonEvent \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_event_SDLEvent \


#endif
