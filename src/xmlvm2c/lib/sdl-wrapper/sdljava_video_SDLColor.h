#ifndef __SDLJAVA_VIDEO_SDLCOLOR__
#define __SDLJAVA_VIDEO_SDLCOLOR__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for sdljava.video.SDLColor
XMLVM_DEFINE_CLASS(sdljava_video_SDLColor, 6, XMLVM_ITABLE_SIZE_sdljava_video_SDLColor)

extern JAVA_OBJECT __CLASS_sdljava_video_SDLColor;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLColor_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLColor_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_video_SDLColor_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_video_SDLColor
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_video_SDLColor \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        JAVA_INT r_; \
        JAVA_INT g_; \
        JAVA_INT b_; \
        JAVA_INT a_; \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_video_SDLColor \
    } sdljava_video_SDLColor

struct sdljava_video_SDLColor {
    __TIB_DEFINITION_sdljava_video_SDLColor* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_video_SDLColor;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLColor
#define XMLVM_FORWARD_DECL_sdljava_video_SDLColor
typedef struct sdljava_video_SDLColor sdljava_video_SDLColor;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_video_SDLColor 6

void __INIT_sdljava_video_SDLColor();
void __INIT_IMPL_sdljava_video_SDLColor();
void __DELETE_sdljava_video_SDLColor(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_video_SDLColor(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_video_SDLColor();
JAVA_OBJECT __NEW_INSTANCE_sdljava_video_SDLColor();
void sdljava_video_SDLColor___INIT____int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3);
void sdljava_video_SDLColor___INIT____int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4);
JAVA_INT sdljava_video_SDLColor_getR__(JAVA_OBJECT me);
void sdljava_video_SDLColor_setR___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT sdljava_video_SDLColor_getG__(JAVA_OBJECT me);
void sdljava_video_SDLColor_setG___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT sdljava_video_SDLColor_getB__(JAVA_OBJECT me);
void sdljava_video_SDLColor_setB___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT sdljava_video_SDLColor_getA__(JAVA_OBJECT me);
void sdljava_video_SDLColor_setA___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
