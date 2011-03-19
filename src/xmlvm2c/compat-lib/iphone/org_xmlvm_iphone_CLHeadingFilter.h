#ifndef __ORG_XMLVM_IPHONE_CLHEADINGFILTER__
#define __ORG_XMLVM_IPHONE_CLHEADINGFILTER__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.CLHeadingFilter
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CLHeadingFilter, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLHeadingFilter;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLHeadingFilter_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLHeadingFilter_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLHeadingFilter_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLHeadingFilter
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CLHeadingFilter \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLHeadingFilter \
    } org_xmlvm_iphone_CLHeadingFilter

struct org_xmlvm_iphone_CLHeadingFilter {
    __TIB_DEFINITION_org_xmlvm_iphone_CLHeadingFilter* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CLHeadingFilter;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLHeadingFilter
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLHeadingFilter
typedef struct org_xmlvm_iphone_CLHeadingFilter org_xmlvm_iphone_CLHeadingFilter;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLHeadingFilter 11

void __INIT_org_xmlvm_iphone_CLHeadingFilter();
void __INIT_IMPL_org_xmlvm_iphone_CLHeadingFilter();
void __DELETE_org_xmlvm_iphone_CLHeadingFilter(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLHeadingFilter(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLHeadingFilter();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLHeadingFilter();
JAVA_DOUBLE org_xmlvm_iphone_CLHeadingFilter_GET_None();
void org_xmlvm_iphone_CLHeadingFilter_PUT_None(JAVA_DOUBLE v);

#endif
