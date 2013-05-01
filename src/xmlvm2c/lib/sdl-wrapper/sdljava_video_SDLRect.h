#ifndef __SDLJAVA_VIDEO_SDLRECT__
#define __SDLJAVA_VIDEO_SDLRECT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for sdljava.video.SDLRect
XMLVM_DEFINE_CLASS(sdljava_video_SDLRect, 6, XMLVM_ITABLE_SIZE_sdljava_video_SDLRect)

extern JAVA_OBJECT __CLASS_sdljava_video_SDLRect;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLRect_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLRect_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLRect_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_video_SDLRect
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_video_SDLRect \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        JAVA_INT x_; \
        JAVA_INT y_; \
        JAVA_INT width_; \
        JAVA_INT height_; \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_video_SDLRect \
    } sdljava_video_SDLRect

struct sdljava_video_SDLRect {
    __TIB_DEFINITION_sdljava_video_SDLRect* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_video_SDLRect;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLRect
#define XMLVM_FORWARD_DECL_sdljava_video_SDLRect
typedef struct sdljava_video_SDLRect sdljava_video_SDLRect;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_video_SDLRect 6

void __INIT_sdljava_video_SDLRect();
void __INIT_IMPL_sdljava_video_SDLRect();
void __DELETE_sdljava_video_SDLRect(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_video_SDLRect(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_video_SDLRect();
JAVA_OBJECT __NEW_INSTANCE_sdljava_video_SDLRect();
void sdljava_video_SDLRect___INIT____int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4);

#endif
