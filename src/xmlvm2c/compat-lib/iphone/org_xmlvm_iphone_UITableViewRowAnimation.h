#ifndef __ORG_XMLVM_IPHONE_UITABLEVIEWROWANIMATION__
#define __ORG_XMLVM_IPHONE_UITABLEVIEWROWANIMATION__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UITableViewRowAnimation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITableViewRowAnimation, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewRowAnimation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewRowAnimation_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewRowAnimation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewRowAnimation \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewRowAnimation \
    } org_xmlvm_iphone_UITableViewRowAnimation

struct org_xmlvm_iphone_UITableViewRowAnimation {
    __TIB_DEFINITION_org_xmlvm_iphone_UITableViewRowAnimation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewRowAnimation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewRowAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewRowAnimation
typedef struct org_xmlvm_iphone_UITableViewRowAnimation org_xmlvm_iphone_UITableViewRowAnimation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITableViewRowAnimation 11

void __INIT_org_xmlvm_iphone_UITableViewRowAnimation();
void __DELETE_org_xmlvm_iphone_UITableViewRowAnimation(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewRowAnimation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewRowAnimation();
JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Fade();
void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Fade(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Right();
void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Right(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Left();
void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Left(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Top();
void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Top(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_Bottom();
void org_xmlvm_iphone_UITableViewRowAnimation_PUT_Bottom(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITableViewRowAnimation_GET_None();
void org_xmlvm_iphone_UITableViewRowAnimation_PUT_None(JAVA_INT v);
void org_xmlvm_iphone_UITableViewRowAnimation___INIT___(JAVA_OBJECT me);

#endif
