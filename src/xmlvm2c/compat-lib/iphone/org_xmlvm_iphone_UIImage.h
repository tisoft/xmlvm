#ifndef __ORG_XMLVM_IPHONE_UIIMAGE__
#define __ORG_XMLVM_IPHONE_UIIMAGE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIImage)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGImage)
#endif
// Class declarations for org.xmlvm.iphone.UIImage
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIImage, 22)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIImage
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIImage \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIImage \
    } org_xmlvm_iphone_UIImage

struct org_xmlvm_iphone_UIImage {
    __TIB_DEFINITION_org_xmlvm_iphone_UIImage* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIImage;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
typedef struct org_xmlvm_iphone_UIImage org_xmlvm_iphone_UIImage;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIImage 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_stretchableImage___int_int 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_getCGImage__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_getSize__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_cropImage___int_int_int_int 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_PNGRepresentation__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_JPEGRepresentation___float 21

void __INIT_org_xmlvm_iphone_UIImage();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImage();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImage();
JAVA_OBJECT org_xmlvm_iphone_UIImage_imageNamed___java_lang_String(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithData___org_xmlvm_iphone_NSData(JAVA_OBJECT n1);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_UIImage_stretchableImage___int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_UIImage_getCGImage__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 17
void org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_UIImage_getSize__(JAVA_OBJECT me);
// Vtable index: 19
JAVA_OBJECT org_xmlvm_iphone_UIImage_cropImage___int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4);
// Vtable index: 20
JAVA_OBJECT org_xmlvm_iphone_UIImage_PNGRepresentation__(JAVA_OBJECT me);
// Vtable index: 21
JAVA_OBJECT org_xmlvm_iphone_UIImage_JPEGRepresentation___float(JAVA_OBJECT me, JAVA_FLOAT n1);

#endif
