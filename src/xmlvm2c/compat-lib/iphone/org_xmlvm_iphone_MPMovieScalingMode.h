#ifndef __ORG_XMLVM_IPHONE_MPMOVIESCALINGMODE__
#define __ORG_XMLVM_IPHONE_MPMOVIESCALINGMODE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.MPMovieScalingMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MPMovieScalingMode, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_MPMovieScalingMode)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPMovieScalingMode;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPMovieScalingMode_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPMovieScalingMode_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPMovieScalingMode_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MPMovieScalingMode
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MPMovieScalingMode \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MPMovieScalingMode \
    } org_xmlvm_iphone_MPMovieScalingMode

struct org_xmlvm_iphone_MPMovieScalingMode {
    __TIB_DEFINITION_org_xmlvm_iphone_MPMovieScalingMode* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MPMovieScalingMode;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MPMovieScalingMode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MPMovieScalingMode
typedef struct org_xmlvm_iphone_MPMovieScalingMode org_xmlvm_iphone_MPMovieScalingMode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MPMovieScalingMode 6

void __INIT_org_xmlvm_iphone_MPMovieScalingMode();
void __INIT_IMPL_org_xmlvm_iphone_MPMovieScalingMode();
void __DELETE_org_xmlvm_iphone_MPMovieScalingMode(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MPMovieScalingMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MPMovieScalingMode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MPMovieScalingMode();
JAVA_INT org_xmlvm_iphone_MPMovieScalingMode_GET_None();
void org_xmlvm_iphone_MPMovieScalingMode_PUT_None(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MPMovieScalingMode_GET_AspectFit();
void org_xmlvm_iphone_MPMovieScalingMode_PUT_AspectFit(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MPMovieScalingMode_GET_AspectFill();
void org_xmlvm_iphone_MPMovieScalingMode_PUT_AspectFill(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MPMovieScalingMode_GET_Fill();
void org_xmlvm_iphone_MPMovieScalingMode_PUT_Fill(JAVA_INT v);

#endif
