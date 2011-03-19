#ifndef __ORG_XMLVM_IPHONE_CGFONT__
#define __ORG_XMLVM_IPHONE_CGFONT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGDataProvider)
#endif
// Class declarations for org.xmlvm.iphone.CGFont
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGFont, 17)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGFont
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGFont \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGFont \
    } org_xmlvm_iphone_CGFont

struct org_xmlvm_iphone_CGFont {
    __TIB_DEFINITION_org_xmlvm_iphone_CGFont* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGFont;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGFont
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGFont
typedef struct org_xmlvm_iphone_CGFont org_xmlvm_iphone_CGFont;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGFont 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGFont_getAscent__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGFont_getDescent__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGFont_getUnitsPerEm__ 16

void __INIT_org_xmlvm_iphone_CGFont();
void __INIT_IMPL_org_xmlvm_iphone_CGFont();
void __DELETE_org_xmlvm_iphone_CGFont(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGFont(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGFont();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGFont();
JAVA_OBJECT org_xmlvm_iphone_CGFont_createFromDataProider___org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT n1);
// Vtable index: 14
JAVA_INT org_xmlvm_iphone_CGFont_getAscent__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_INT org_xmlvm_iphone_CGFont_getDescent__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_INT org_xmlvm_iphone_CGFont_getUnitsPerEm__(JAVA_OBJECT me);

#endif
