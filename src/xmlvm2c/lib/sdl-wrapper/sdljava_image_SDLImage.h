#ifndef __SDLJAVA_IMAGE_SDLIMAGE__
#define __SDLJAVA_IMAGE_SDLIMAGE__

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
#ifndef XMLVM_FORWARD_DECL_sdljava_video_SDLSurface
#define XMLVM_FORWARD_DECL_sdljava_video_SDLSurface
XMLVM_FORWARD_DECL(sdljava_video_SDLSurface)
#endif
// Class declarations for sdljava.image.SDLImage
XMLVM_DEFINE_CLASS(sdljava_image_SDLImage, 6, XMLVM_ITABLE_SIZE_sdljava_image_SDLImage)

extern JAVA_OBJECT __CLASS_sdljava_image_SDLImage;
extern JAVA_OBJECT __CLASS_sdljava_image_SDLImage_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_image_SDLImage_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_image_SDLImage_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_image_SDLImage
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_image_SDLImage \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_image_SDLImage \
    } sdljava_image_SDLImage

struct sdljava_image_SDLImage {
    __TIB_DEFINITION_sdljava_image_SDLImage* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_image_SDLImage;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_image_SDLImage
#define XMLVM_FORWARD_DECL_sdljava_image_SDLImage
typedef struct sdljava_image_SDLImage sdljava_image_SDLImage;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_image_SDLImage 6

void __INIT_sdljava_image_SDLImage();
void __INIT_IMPL_sdljava_image_SDLImage();
void __DELETE_sdljava_image_SDLImage(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_image_SDLImage(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_image_SDLImage();
JAVA_OBJECT __NEW_INSTANCE_sdljava_image_SDLImage();
void sdljava_image_SDLImage___INIT___(JAVA_OBJECT me);
JAVA_OBJECT sdljava_image_SDLImage_load___java_lang_String(JAVA_OBJECT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_sdljava_image_SDLImage \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_sdljava_image_SDLImage \


#endif
