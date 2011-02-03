#ifndef __ORG_XMLVM_IPHONE_UIIMAGEVIEW__
#define __ORG_XMLVM_IPHONE_UIIMAGEVIEW__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIImage)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIImageView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIImageView, 72)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImageView;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImageView_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIImageView \
    JAVA_OBJECT image;
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIImageView \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIImageView \
    } org_xmlvm_iphone_UIImageView

struct org_xmlvm_iphone_UIImageView {
    __TIB_DEFINITION_org_xmlvm_iphone_UIImageView* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIImageView;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImageView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImageView
typedef struct org_xmlvm_iphone_UIImageView org_xmlvm_iphone_UIImageView;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIImageView 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImageView_setImage___org_xmlvm_iphone_UIImage 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImageView_getImage__ 71

void __INIT_org_xmlvm_iphone_UIImageView();
void __DELETE_org_xmlvm_iphone_UIImageView(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImageView();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImageView();
void org_xmlvm_iphone_UIImageView___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIImageView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 70
void org_xmlvm_iphone_UIImageView_setImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 71
JAVA_OBJECT org_xmlvm_iphone_UIImageView_getImage__(JAVA_OBJECT me);

#endif
