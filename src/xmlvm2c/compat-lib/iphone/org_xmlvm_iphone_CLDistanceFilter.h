#ifndef __ORG_XMLVM_IPHONE_CLDISTANCEFILTER__
#define __ORG_XMLVM_IPHONE_CLDISTANCEFILTER__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.CLDistanceFilter
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CLDistanceFilter, 11)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CLDistanceFilter
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_CLDistanceFilter \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CLDistanceFilter \
    } org_xmlvm_iphone_CLDistanceFilter

struct org_xmlvm_iphone_CLDistanceFilter {
    __CLASS_DEFINITION_org_xmlvm_iphone_CLDistanceFilter* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_CLDistanceFilter;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLDistanceFilter
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLDistanceFilter
typedef struct org_xmlvm_iphone_CLDistanceFilter org_xmlvm_iphone_CLDistanceFilter;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLDistanceFilter 11

void __INIT_org_xmlvm_iphone_CLDistanceFilter();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLDistanceFilter();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLDistanceFilter();
JAVA_DOUBLE org_xmlvm_iphone_CLDistanceFilter_GET_None();
void org_xmlvm_iphone_CLDistanceFilter_PUT_None(JAVA_DOUBLE v);

#endif
