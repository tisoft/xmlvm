#ifndef __ORG_XMLVM_IPHONE_MPMOVIECONTROLMODE__
#define __ORG_XMLVM_IPHONE_MPMOVIECONTROLMODE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.MPMovieControlMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MPMovieControlMode, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MPMovieControlMode
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_MPMovieControlMode \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MPMovieControlMode \
    } org_xmlvm_iphone_MPMovieControlMode

struct org_xmlvm_iphone_MPMovieControlMode {
    __CLASS_DEFINITION_org_xmlvm_iphone_MPMovieControlMode* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_MPMovieControlMode;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MPMovieControlMode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MPMovieControlMode
typedef struct org_xmlvm_iphone_MPMovieControlMode org_xmlvm_iphone_MPMovieControlMode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MPMovieControlMode 14

void __INIT_org_xmlvm_iphone_MPMovieControlMode();
JAVA_OBJECT __NEW_org_xmlvm_iphone_MPMovieControlMode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MPMovieControlMode();
JAVA_INT org_xmlvm_iphone_MPMovieControlMode_GET_Default();
void org_xmlvm_iphone_MPMovieControlMode_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MPMovieControlMode_GET_VolumeOnly();
void org_xmlvm_iphone_MPMovieControlMode_PUT_VolumeOnly(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MPMovieControlMode_GET_Hidden();
void org_xmlvm_iphone_MPMovieControlMode_PUT_Hidden(JAVA_INT v);
void org_xmlvm_iphone_MPMovieControlMode___INIT___(JAVA_OBJECT me);

#endif
