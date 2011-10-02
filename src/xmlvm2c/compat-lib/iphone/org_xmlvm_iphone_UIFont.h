#ifndef __ORG_XMLVM_IPHONE_UIFONT__
#define __ORG_XMLVM_IPHONE_UIFONT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UIFont
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIFont, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIFont)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIFont

void org_xmlvm_iphone_UIFont_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObj);


//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIFont \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIFont \
    } org_xmlvm_iphone_UIFont

struct org_xmlvm_iphone_UIFont {
    __TIB_DEFINITION_org_xmlvm_iphone_UIFont* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIFont;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIFont
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIFont
typedef struct org_xmlvm_iphone_UIFont org_xmlvm_iphone_UIFont;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIFont 7

void __INIT_org_xmlvm_iphone_UIFont();
void __INIT_IMPL_org_xmlvm_iphone_UIFont();
void __DELETE_org_xmlvm_iphone_UIFont(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIFont(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIFont();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIFont();
JAVA_OBJECT org_xmlvm_iphone_UIFont_systemFontOfSize___float(JAVA_FLOAT n1);
JAVA_OBJECT org_xmlvm_iphone_UIFont_boldSystemFontOfSize___float(JAVA_FLOAT n1);
JAVA_OBJECT org_xmlvm_iphone_UIFont_italicSystemFontOfSize___float(JAVA_FLOAT n1);
JAVA_OBJECT org_xmlvm_iphone_UIFont_fontWithSize___float(JAVA_OBJECT me, JAVA_FLOAT n1);
JAVA_OBJECT org_xmlvm_iphone_UIFont_fontWithNameSize___java_lang_String_float(JAVA_OBJECT n1, JAVA_FLOAT n2);
JAVA_FLOAT org_xmlvm_iphone_UIFont_buttonFontSize__();
JAVA_FLOAT org_xmlvm_iphone_UIFont_labelFontSize__();
JAVA_OBJECT org_xmlvm_iphone_UIFont_familyName__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UIFont_fontName__(JAVA_OBJECT me);
JAVA_FLOAT org_xmlvm_iphone_UIFont_pointSize__(JAVA_OBJECT me);

#endif
