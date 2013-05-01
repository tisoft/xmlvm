#ifndef __SDLJAVAX_GFX_SDLGFX__
#define __SDLJAVAX_GFX_SDLGFX__

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
// Class declarations for sdljavax.gfx.SDLGfx
XMLVM_DEFINE_CLASS(sdljavax_gfx_SDLGfx, 6, XMLVM_ITABLE_SIZE_sdljavax_gfx_SDLGfx)

extern JAVA_OBJECT __CLASS_sdljavax_gfx_SDLGfx;
extern JAVA_OBJECT __CLASS_sdljavax_gfx_SDLGfx_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljavax_gfx_SDLGfx_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljavax_gfx_SDLGfx_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljavax_gfx_SDLGfx
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljavax_gfx_SDLGfx \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljavax_gfx_SDLGfx \
    } sdljavax_gfx_SDLGfx

struct sdljavax_gfx_SDLGfx {
    __TIB_DEFINITION_sdljavax_gfx_SDLGfx* tib;
    struct {
        __INSTANCE_FIELDS_sdljavax_gfx_SDLGfx;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljavax_gfx_SDLGfx
#define XMLVM_FORWARD_DECL_sdljavax_gfx_SDLGfx
typedef struct sdljavax_gfx_SDLGfx sdljavax_gfx_SDLGfx;
#endif

#define XMLVM_VTABLE_SIZE_sdljavax_gfx_SDLGfx 6

void __INIT_sdljavax_gfx_SDLGfx();
void __INIT_IMPL_sdljavax_gfx_SDLGfx();
void __DELETE_sdljavax_gfx_SDLGfx(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljavax_gfx_SDLGfx(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljavax_gfx_SDLGfx();
JAVA_OBJECT __NEW_INSTANCE_sdljavax_gfx_SDLGfx();
void sdljavax_gfx_SDLGfx___INIT___(JAVA_OBJECT me);
JAVA_OBJECT sdljavax_gfx_SDLGfx_zoomSurface___sdljava_video_SDLSurface_double_double_boolean(JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3, JAVA_BOOLEAN n4);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljavax_gfx_SDLGfx \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljavax_gfx_SDLGfx \


#endif
