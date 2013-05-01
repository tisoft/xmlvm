#ifndef __SDLJAVA_VIDEO_SDLVIDEO__
#define __SDLJAVA_VIDEO_SDLVIDEO__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLSurface
#define XMLVM_FORWARD_DECL_sdljava_video_SDLSurface
XMLVM_FORWARD_DECL(sdljava_video_SDLSurface)
#endif
// Class declarations for sdljava.video.SDLVideo
XMLVM_DEFINE_CLASS(sdljava_video_SDLVideo, 6, XMLVM_ITABLE_SIZE_sdljava_video_SDLVideo)

extern JAVA_OBJECT __CLASS_sdljava_video_SDLVideo;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLVideo_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLVideo_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLVideo_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_video_SDLVideo
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_video_SDLVideo \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_video_SDLVideo \
    } sdljava_video_SDLVideo

struct sdljava_video_SDLVideo {
    __TIB_DEFINITION_sdljava_video_SDLVideo* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_video_SDLVideo;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLVideo
#define XMLVM_FORWARD_DECL_sdljava_video_SDLVideo
typedef struct sdljava_video_SDLVideo sdljava_video_SDLVideo;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_video_SDLVideo 6

void __INIT_sdljava_video_SDLVideo();
void __INIT_IMPL_sdljava_video_SDLVideo();
void __DELETE_sdljava_video_SDLVideo(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_video_SDLVideo(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_video_SDLVideo();
JAVA_OBJECT __NEW_INSTANCE_sdljava_video_SDLVideo();
JAVA_INT sdljava_video_SDLVideo_GET_SDL_ALPHA_OPAQUE();
void sdljava_video_SDLVideo_PUT_SDL_ALPHA_OPAQUE(JAVA_INT v);
JAVA_INT sdljava_video_SDLVideo_GET_SDL_ALPHA_TRANSPARENT();
void sdljava_video_SDLVideo_PUT_SDL_ALPHA_TRANSPARENT(JAVA_INT v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_ANYFORMAT();
void sdljava_video_SDLVideo_PUT_SDL_ANYFORMAT(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_ASYNCBLIT();
void sdljava_video_SDLVideo_PUT_SDL_ASYNCBLIT(JAVA_LONG v);
JAVA_INT sdljava_video_SDLVideo_GET_SDL_DISABLE();
void sdljava_video_SDLVideo_PUT_SDL_DISABLE(JAVA_INT v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_DOUBLEBUF();
void sdljava_video_SDLVideo_PUT_SDL_DOUBLEBUF(JAVA_LONG v);
JAVA_INT sdljava_video_SDLVideo_GET_SDL_ENABLE();
void sdljava_video_SDLVideo_PUT_SDL_ENABLE(JAVA_INT v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_FULLSCREEN();
void sdljava_video_SDLVideo_PUT_SDL_FULLSCREEN(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_HWACCEL();
void sdljava_video_SDLVideo_PUT_SDL_HWACCEL(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_HWPALETTE();
void sdljava_video_SDLVideo_PUT_SDL_HWPALETTE(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_HWSURFACE();
void sdljava_video_SDLVideo_PUT_SDL_HWSURFACE(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_NOFRAME();
void sdljava_video_SDLVideo_PUT_SDL_NOFRAME(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_OPENGL();
void sdljava_video_SDLVideo_PUT_SDL_OPENGL(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_OPENGLBLIT();
void sdljava_video_SDLVideo_PUT_SDL_OPENGLBLIT(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_PREALLOC();
void sdljava_video_SDLVideo_PUT_SDL_PREALLOC(JAVA_LONG v);
JAVA_INT sdljava_video_SDLVideo_GET_SDL_QUERY();
void sdljava_video_SDLVideo_PUT_SDL_QUERY(JAVA_INT v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_RESIZABLE();
void sdljava_video_SDLVideo_PUT_SDL_RESIZABLE(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_RLEACCEL();
void sdljava_video_SDLVideo_PUT_SDL_RLEACCEL(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_SRCALPHA();
void sdljava_video_SDLVideo_PUT_SDL_SRCALPHA(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_SRCCOLORKEY();
void sdljava_video_SDLVideo_PUT_SDL_SRCCOLORKEY(JAVA_LONG v);
JAVA_LONG sdljava_video_SDLVideo_GET_SDL_SWSURFACE();
void sdljava_video_SDLVideo_PUT_SDL_SWSURFACE(JAVA_LONG v);
void sdljava_video_SDLVideo___INIT___(JAVA_OBJECT me);
JAVA_OBJECT sdljava_video_SDLVideo_setVideoMode___int_int_int_long(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_LONG n4);
JAVA_OBJECT sdljava_video_SDLVideo_createRGBSurface___long_int_int_int_long_long_long_long(JAVA_LONG n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_LONG n5, JAVA_LONG n6, JAVA_LONG n7, JAVA_LONG n8);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_video_SDLVideo \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_video_SDLVideo \


#endif
