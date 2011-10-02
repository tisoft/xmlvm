#ifndef __ORG_XMLVM_IPHONE_UTTYPE__
#define __ORG_XMLVM_IPHONE_UTTYPE__

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
// Class declarations for org.xmlvm.iphone.UTType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UTType, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UTType)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UTType;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UTType_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UTType_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UTType_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UTType
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UTType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UTType \
    } org_xmlvm_iphone_UTType

struct org_xmlvm_iphone_UTType {
    __TIB_DEFINITION_org_xmlvm_iphone_UTType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UTType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UTType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UTType
typedef struct org_xmlvm_iphone_UTType org_xmlvm_iphone_UTType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UTType 6

void __INIT_org_xmlvm_iphone_UTType();
void __INIT_IMPL_org_xmlvm_iphone_UTType();
void __DELETE_org_xmlvm_iphone_UTType(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UTType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UTType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UTType();
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_Image();
void org_xmlvm_iphone_UTType_PUT_Image(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_JPEG();
void org_xmlvm_iphone_UTType_PUT_JPEG(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_JPEG2000();
void org_xmlvm_iphone_UTType_PUT_JPEG2000(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_TIFF();
void org_xmlvm_iphone_UTType_PUT_TIFF(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_PICT();
void org_xmlvm_iphone_UTType_PUT_PICT(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_GIF();
void org_xmlvm_iphone_UTType_PUT_GIF(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_PNG();
void org_xmlvm_iphone_UTType_PUT_PNG(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_QuickTimeImage();
void org_xmlvm_iphone_UTType_PUT_QuickTimeImage(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_AppleICNS();
void org_xmlvm_iphone_UTType_PUT_AppleICNS(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_BMP();
void org_xmlvm_iphone_UTType_PUT_BMP(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_ICO();
void org_xmlvm_iphone_UTType_PUT_ICO(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_AudiovisualContent();
void org_xmlvm_iphone_UTType_PUT_AudiovisualContent(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_Movie();
void org_xmlvm_iphone_UTType_PUT_Movie(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_Video();
void org_xmlvm_iphone_UTType_PUT_Video(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_Audio();
void org_xmlvm_iphone_UTType_PUT_Audio(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_QuickTimeMovie();
void org_xmlvm_iphone_UTType_PUT_QuickTimeMovie(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_MPEG();
void org_xmlvm_iphone_UTType_PUT_MPEG(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_MPEG4();
void org_xmlvm_iphone_UTType_PUT_MPEG4(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_MP3();
void org_xmlvm_iphone_UTType_PUT_MP3(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_MPEG4Audio();
void org_xmlvm_iphone_UTType_PUT_MPEG4Audio(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UTType_GET_AppleProtectedMPEG4Audio();
void org_xmlvm_iphone_UTType_PUT_AppleProtectedMPEG4Audio(JAVA_OBJECT v);

#endif
