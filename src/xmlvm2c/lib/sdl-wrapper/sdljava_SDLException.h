#ifndef __SDLJAVA_SDLEXCEPTION__
#define __SDLJAVA_SDLEXCEPTION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Exception.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for sdljava.SDLException
XMLVM_DEFINE_CLASS(sdljava_SDLException, 6, XMLVM_ITABLE_SIZE_sdljava_SDLException)

extern JAVA_OBJECT __CLASS_sdljava_SDLException;
extern JAVA_OBJECT __CLASS_sdljava_SDLException_1ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_SDLException_2ARRAY;
extern JAVA_OBJECT __CLASS_sdljava_SDLException_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_sdljava_SDLException
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_sdljava_SDLException \
    __INSTANCE_FIELDS_java_lang_Exception; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_sdljava_SDLException \
    } sdljava_SDLException

struct sdljava_SDLException {
    __TIB_DEFINITION_sdljava_SDLException* tib;
    struct {
        __INSTANCE_FIELDS_sdljava_SDLException;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_sdljava_SDLException
#define XMLVM_FORWARD_DECL_sdljava_SDLException
typedef struct sdljava_SDLException sdljava_SDLException;
#endif

#define XMLVM_VTABLE_SIZE_sdljava_SDLException 6

void __INIT_sdljava_SDLException();
void __INIT_IMPL_sdljava_SDLException();
void __DELETE_sdljava_SDLException(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_sdljava_SDLException(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_sdljava_SDLException();
JAVA_OBJECT __NEW_INSTANCE_sdljava_SDLException();
void sdljava_SDLException___INIT___(JAVA_OBJECT me);
void sdljava_SDLException___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
