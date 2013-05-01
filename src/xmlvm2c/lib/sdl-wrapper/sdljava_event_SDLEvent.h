#ifndef __SDLJAVA_EVENT_SDLEVENT__
#define __SDLJAVA_EVENT_SDLEVENT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for sdljava.event.SDLEvent
XMLVM_DEFINE_CLASS(sdljava_event_SDLEvent, 6, XMLVM_ITABLE_SIZE_sdljava_event_SDLEvent)

extern JAVA_OBJECT __CLASS_sdljava_event_SDLEvent;
extern JAVA_OBJECT __CLASS_sdljava_event_SDLEvent_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_event_SDLEvent_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_event_SDLEvent_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#include <SDL/SDL.h>

#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_event_SDLEvent \
	SDL_Event delegate;
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_event_SDLEvent \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_event_SDLEvent \
    } sdljava_event_SDLEvent

struct sdljava_event_SDLEvent {
    __TIB_DEFINITION_sdljava_event_SDLEvent* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_event_SDLEvent;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_event_SDLEvent
#define XMLVM_FORWARD_DECL_sdljava_event_SDLEvent
typedef struct sdljava_event_SDLEvent sdljava_event_SDLEvent;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_event_SDLEvent 6

void __INIT_sdljava_event_SDLEvent();
void __INIT_IMPL_sdljava_event_SDLEvent();
void __DELETE_sdljava_event_SDLEvent(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_event_SDLEvent(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_event_SDLEvent();
JAVA_OBJECT __NEW_INSTANCE_sdljava_event_SDLEvent();
JAVA_INT sdljava_event_SDLEvent_GET_SDL_ACTIVEEVENT();
void sdljava_event_SDLEvent_PUT_SDL_ACTIVEEVENT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_ACTIVEEVENTMASK();
void sdljava_event_SDLEvent_PUT_SDL_ACTIVEEVENTMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_ADDEVENT();
void sdljava_event_SDLEvent_PUT_SDL_ADDEVENT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_APPACTIVE();
void sdljava_event_SDLEvent_PUT_SDL_APPACTIVE(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_APPINPUTFOCUS();
void sdljava_event_SDLEvent_PUT_SDL_APPINPUTFOCUS(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_APPMOUSEFOCUS();
void sdljava_event_SDLEvent_PUT_SDL_APPMOUSEFOCUS(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_LEFT();
void sdljava_event_SDLEvent_PUT_SDL_BUTTON_LEFT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_MIDDLE();
void sdljava_event_SDLEvent_PUT_SDL_BUTTON_MIDDLE(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_RIGHT();
void sdljava_event_SDLEvent_PUT_SDL_BUTTON_RIGHT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_WHEELDOWN();
void sdljava_event_SDLEvent_PUT_SDL_BUTTON_WHEELDOWN(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_BUTTON_WHEELUP();
void sdljava_event_SDLEvent_PUT_SDL_BUTTON_WHEELUP(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_DEFAULT_REPEAT_DELAY();
void sdljava_event_SDLEvent_PUT_SDL_DEFAULT_REPEAT_DELAY(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_DEFAULT_REPEAT_INTERVAL();
void sdljava_event_SDLEvent_PUT_SDL_DEFAULT_REPEAT_INTERVAL(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_DISABLE();
void sdljava_event_SDLEvent_PUT_SDL_DISABLE(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_ENABLE();
void sdljava_event_SDLEvent_PUT_SDL_ENABLE(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_GETEVENT();
void sdljava_event_SDLEvent_PUT_SDL_GETEVENT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_IGNORE();
void sdljava_event_SDLEvent_PUT_SDL_IGNORE(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYAXISMOTION();
void sdljava_event_SDLEvent_PUT_SDL_JOYAXISMOTION(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYAXISMOTIONMASK();
void sdljava_event_SDLEvent_PUT_SDL_JOYAXISMOTIONMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBALLMOTION();
void sdljava_event_SDLEvent_PUT_SDL_JOYBALLMOTION(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBALLMOTIONMASK();
void sdljava_event_SDLEvent_PUT_SDL_JOYBALLMOTIONMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBUTTONDOWN();
void sdljava_event_SDLEvent_PUT_SDL_JOYBUTTONDOWN(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBUTTONDOWNMASK();
void sdljava_event_SDLEvent_PUT_SDL_JOYBUTTONDOWNMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBUTTONUP();
void sdljava_event_SDLEvent_PUT_SDL_JOYBUTTONUP(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYBUTTONUPMASK();
void sdljava_event_SDLEvent_PUT_SDL_JOYBUTTONUPMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYEVENTMASK();
void sdljava_event_SDLEvent_PUT_SDL_JOYEVENTMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYHATMOTION();
void sdljava_event_SDLEvent_PUT_SDL_JOYHATMOTION(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_JOYHATMOTIONMASK();
void sdljava_event_SDLEvent_PUT_SDL_JOYHATMOTIONMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_KEYDOWN();
void sdljava_event_SDLEvent_PUT_SDL_KEYDOWN(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_KEYDOWNMASK();
void sdljava_event_SDLEvent_PUT_SDL_KEYDOWNMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_KEYUP();
void sdljava_event_SDLEvent_PUT_SDL_KEYUP(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_KEYUPMASK();
void sdljava_event_SDLEvent_PUT_SDL_KEYUPMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEBUTTONDOWN();
void sdljava_event_SDLEvent_PUT_SDL_MOUSEBUTTONDOWN(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEBUTTONDOWNMASK();
void sdljava_event_SDLEvent_PUT_SDL_MOUSEBUTTONDOWNMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEBUTTONUP();
void sdljava_event_SDLEvent_PUT_SDL_MOUSEBUTTONUP(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEBUTTONUPMASK();
void sdljava_event_SDLEvent_PUT_SDL_MOUSEBUTTONUPMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEEVENTMASK();
void sdljava_event_SDLEvent_PUT_SDL_MOUSEEVENTMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEMOTION();
void sdljava_event_SDLEvent_PUT_SDL_MOUSEMOTION(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_MOUSEMOTIONMASK();
void sdljava_event_SDLEvent_PUT_SDL_MOUSEMOTIONMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_NOEVENT();
void sdljava_event_SDLEvent_PUT_SDL_NOEVENT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_PEEKEVENT();
void sdljava_event_SDLEvent_PUT_SDL_PEEKEVENT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_PRESSED();
void sdljava_event_SDLEvent_PUT_SDL_PRESSED(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_QUERY();
void sdljava_event_SDLEvent_PUT_SDL_QUERY(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_QUIT();
void sdljava_event_SDLEvent_PUT_SDL_QUIT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_QUITMASK();
void sdljava_event_SDLEvent_PUT_SDL_QUITMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_RELEASED();
void sdljava_event_SDLEvent_PUT_SDL_RELEASED(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_SYSWMEVENT();
void sdljava_event_SDLEvent_PUT_SDL_SYSWMEVENT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_SYSWMEVENTMASK();
void sdljava_event_SDLEvent_PUT_SDL_SYSWMEVENTMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_USEREVENT();
void sdljava_event_SDLEvent_PUT_SDL_USEREVENT(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_VIDEOEXPOSE();
void sdljava_event_SDLEvent_PUT_SDL_VIDEOEXPOSE(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_VIDEOEXPOSEMASK();
void sdljava_event_SDLEvent_PUT_SDL_VIDEOEXPOSEMASK(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_VIDEORESIZE();
void sdljava_event_SDLEvent_PUT_SDL_VIDEORESIZE(JAVA_INT v);
JAVA_INT sdljava_event_SDLEvent_GET_SDL_VIDEORESIZEMASK();
void sdljava_event_SDLEvent_PUT_SDL_VIDEORESIZEMASK(JAVA_INT v);
void sdljava_event_SDLEvent___INIT___(JAVA_OBJECT me);
JAVA_INT sdljava_event_SDLEvent_getType__(JAVA_OBJECT me);
JAVA_OBJECT sdljava_event_SDLEvent_pollEvent__();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_event_SDLEvent \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_event_SDLEvent \


#endif
