#ifndef __ORG_XMLVM_IPHONE_MPMOVIESCALINGMODE__
#define __ORG_XMLVM_IPHONE_MPMOVIESCALINGMODE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.MPMovieScalingMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MPMovieScalingMode, 11)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MPMovieScalingMode
//XMLVM_END_FIELDS

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MPMovieScalingMode 11

void __INIT_org_xmlvm_iphone_MPMovieScalingMode();
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
void org_xmlvm_iphone_MPMovieScalingMode___INIT___(JAVA_OBJECT me);

#endif
