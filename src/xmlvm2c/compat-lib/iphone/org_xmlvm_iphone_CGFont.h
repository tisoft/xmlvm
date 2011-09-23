#ifndef __ORG_XMLVM_IPHONE_CGFONT__
#define __ORG_XMLVM_IPHONE_CGFONT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGDataProvider)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGFont
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGFont
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGFont)
#endif
// Class declarations for org.xmlvm.iphone.CGFont
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGFont, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGFont)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGFont
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGFont \
    __INSTANCE_FIELDS_java_lang_Object; \
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGFont 6

void __INIT_org_xmlvm_iphone_CGFont();
void __INIT_IMPL_org_xmlvm_iphone_CGFont();
void __DELETE_org_xmlvm_iphone_CGFont(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGFont(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGFont();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGFont();
JAVA_OBJECT org_xmlvm_iphone_CGFont_createFromDataProider___org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT n1);
JAVA_INT org_xmlvm_iphone_CGFont_getAscent__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_CGFont_getDescent__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_CGFont_getUnitsPerEm__(JAVA_OBJECT me);

#endif
