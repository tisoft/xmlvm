#ifndef __SDLJAVA_VIDEO_SDLSURFACE__
#define __SDLJAVA_VIDEO_SDLSURFACE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLRect
#define XMLVM_FORWARD_DECL_sdljava_video_SDLRect
XMLVM_FORWARD_DECL(sdljava_video_SDLRect)
#endif
// Class declarations for sdljava.video.SDLSurface
XMLVM_DEFINE_CLASS(sdljava_video_SDLSurface, 6, XMLVM_ITABLE_SIZE_sdljava_video_SDLSurface)

extern JAVA_OBJECT __CLASS_sdljava_video_SDLSurface;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLSurface_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLSurface_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLSurface_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#include <SDL/SDL.h>

#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_video_SDLSurface \
	SDL_Surface *delegate;

void sdljava_video_SDLSurface___INIT___INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, SDL_Surface *delegate);
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_video_SDLSurface \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_video_SDLSurface \
    } sdljava_video_SDLSurface

struct sdljava_video_SDLSurface {
    __TIB_DEFINITION_sdljava_video_SDLSurface* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_video_SDLSurface;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLSurface
#define XMLVM_FORWARD_DECL_sdljava_video_SDLSurface
typedef struct sdljava_video_SDLSurface sdljava_video_SDLSurface;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_video_SDLSurface 6
#define XMLVM_VTABLE_IDX_sdljava_video_SDLSurface_finalize_sdljava_video_SDLSurface__ 2

void __INIT_sdljava_video_SDLSurface();
void __INIT_IMPL_sdljava_video_SDLSurface();
void __DELETE_sdljava_video_SDLSurface(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_video_SDLSurface(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_video_SDLSurface();
JAVA_OBJECT __NEW_INSTANCE_sdljava_video_SDLSurface();
void sdljava_video_SDLSurface___INIT___(JAVA_OBJECT me);
void sdljava_video_SDLSurface_updateRect__(JAVA_OBJECT me);
void sdljava_video_SDLSurface_updateRect___int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4);
JAVA_INT sdljava_video_SDLSurface_getWidth__(JAVA_OBJECT me);
JAVA_INT sdljava_video_SDLSurface_getHeight__(JAVA_OBJECT me);
JAVA_INT sdljava_video_SDLSurface_blitSurface___sdljava_video_SDLSurface_sdljava_video_SDLRect(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 2
void sdljava_video_SDLSurface_finalize_sdljava_video_SDLSurface__(JAVA_OBJECT me);
void sdljava_video_SDLSurface_fillRect___sdljava_video_SDLRect_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2);
void sdljava_video_SDLSurface_fillRect___long(JAVA_OBJECT me, JAVA_LONG n1);
void sdljava_video_SDLSurface_setAlpha___long_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_INT n2);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_video_SDLSurface \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_video_SDLSurface \


#endif
