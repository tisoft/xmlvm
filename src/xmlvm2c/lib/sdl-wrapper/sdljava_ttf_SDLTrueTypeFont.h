#ifndef __SDLJAVA_TTF_SDLTRUETYPEFONT__
#define __SDLJAVA_TTF_SDLTRUETYPEFONT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLColor
#define XMLVM_FORWARD_DECL_sdljava_video_SDLColor
XMLVM_FORWARD_DECL(sdljava_video_SDLColor)
#endif
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLSurface
#define XMLVM_FORWARD_DECL_sdljava_video_SDLSurface
XMLVM_FORWARD_DECL(sdljava_video_SDLSurface)
#endif
// Class declarations for sdljava.ttf.SDLTrueTypeFont
XMLVM_DEFINE_CLASS(sdljava_ttf_SDLTrueTypeFont, 6, XMLVM_ITABLE_SIZE_sdljava_ttf_SDLTrueTypeFont)

extern JAVA_OBJECT __CLASS_sdljava_ttf_SDLTrueTypeFont;
extern JAVA_OBJECT __CLASS_sdljava_ttf_SDLTrueTypeFont_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_ttf_SDLTrueTypeFont_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_ttf_SDLTrueTypeFont_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#include <SDL/SDL_ttf.h>

#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_ttf_SDLTrueTypeFont \
	TTF_Font *font;

void sdljava_ttf_SDLTrueTypeFont___INIT___INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, TTF_Font *font);
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_ttf_SDLTrueTypeFont \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_ttf_SDLTrueTypeFont \
    } sdljava_ttf_SDLTrueTypeFont

struct sdljava_ttf_SDLTrueTypeFont {
    __TIB_DEFINITION_sdljava_ttf_SDLTrueTypeFont* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_ttf_SDLTrueTypeFont;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_ttf_SDLTrueTypeFont
#define XMLVM_FORWARD_DECL_sdljava_ttf_SDLTrueTypeFont
typedef struct sdljava_ttf_SDLTrueTypeFont sdljava_ttf_SDLTrueTypeFont;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_ttf_SDLTrueTypeFont 6
#define XMLVM_VTABLE_IDX_sdljava_ttf_SDLTrueTypeFont_finalize_sdljava_ttf_SDLTrueTypeFont__ 2

void __INIT_sdljava_ttf_SDLTrueTypeFont();
void __INIT_IMPL_sdljava_ttf_SDLTrueTypeFont();
void __DELETE_sdljava_ttf_SDLTrueTypeFont(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_ttf_SDLTrueTypeFont(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_ttf_SDLTrueTypeFont();
JAVA_OBJECT __NEW_INSTANCE_sdljava_ttf_SDLTrueTypeFont();
void sdljava_ttf_SDLTrueTypeFont___INIT___(JAVA_OBJECT me);
JAVA_OBJECT sdljava_ttf_SDLTrueTypeFont_renderTextBlended___java_lang_String_sdljava_video_SDLColor(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 2
void sdljava_ttf_SDLTrueTypeFont_finalize_sdljava_ttf_SDLTrueTypeFont__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_ttf_SDLTrueTypeFont \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_ttf_SDLTrueTypeFont \


#endif
