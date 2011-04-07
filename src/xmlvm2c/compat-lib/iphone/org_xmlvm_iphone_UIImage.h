#ifndef __ORG_XMLVM_IPHONE_UIIMAGE__
#define __ORG_XMLVM_IPHONE_UIIMAGE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPoint)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSString
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSString
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSString)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UIImage
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIImage, 18, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIImage)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIImage 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_dummyMethod___org_xmlvm_iphone_NSString 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_stretchableImage___int_int 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_getCGImage__ 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_getSize__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_cropImage___int_int_int_int 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_PNGRepresentation__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIImage_JPEGRepresentation___float 17

void __INIT_org_xmlvm_iphone_UIImage();
void __INIT_IMPL_org_xmlvm_iphone_UIImage();
void __DELETE_org_xmlvm_iphone_UIImage(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImage(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImage();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImage();
// Vtable index: 9
void org_xmlvm_iphone_UIImage_dummyMethod___org_xmlvm_iphone_NSString(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIImage_imageNamed___java_lang_String(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithData___org_xmlvm_iphone_NSData(JAVA_OBJECT n1);
// Vtable index: 10
JAVA_OBJECT org_xmlvm_iphone_UIImage_stretchableImage___int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2);
// Vtable index: 11
JAVA_OBJECT org_xmlvm_iphone_UIImage_getCGImage__(JAVA_OBJECT me);
// Vtable index: 12
void org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 13
void org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_UIImage_getSize__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_UIImage_cropImage___int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4);
// Vtable index: 16
JAVA_OBJECT org_xmlvm_iphone_UIImage_PNGRepresentation__(JAVA_OBJECT me);
// Vtable index: 17
JAVA_OBJECT org_xmlvm_iphone_UIImage_JPEGRepresentation___float(JAVA_OBJECT me, JAVA_FLOAT n1);

#endif
