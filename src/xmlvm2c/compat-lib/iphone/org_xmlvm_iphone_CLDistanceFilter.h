#ifndef __ORG_XMLVM_IPHONE_CLDISTANCEFILTER__
#define __ORG_XMLVM_IPHONE_CLDISTANCEFILTER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CLDistanceFilter
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CLDistanceFilter, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CLDistanceFilter)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDistanceFilter;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDistanceFilter_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDistanceFilter_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDistanceFilter_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLDistanceFilter
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CLDistanceFilter \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLDistanceFilter \
    } org_xmlvm_iphone_CLDistanceFilter

struct org_xmlvm_iphone_CLDistanceFilter {
    __TIB_DEFINITION_org_xmlvm_iphone_CLDistanceFilter* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CLDistanceFilter;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLDistanceFilter
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLDistanceFilter
typedef struct org_xmlvm_iphone_CLDistanceFilter org_xmlvm_iphone_CLDistanceFilter;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLDistanceFilter 6

void __INIT_org_xmlvm_iphone_CLDistanceFilter();
void __INIT_IMPL_org_xmlvm_iphone_CLDistanceFilter();
void __DELETE_org_xmlvm_iphone_CLDistanceFilter(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLDistanceFilter(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLDistanceFilter();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLDistanceFilter();
JAVA_DOUBLE org_xmlvm_iphone_CLDistanceFilter_GET_None();
void org_xmlvm_iphone_CLDistanceFilter_PUT_None(JAVA_DOUBLE v);

#endif
