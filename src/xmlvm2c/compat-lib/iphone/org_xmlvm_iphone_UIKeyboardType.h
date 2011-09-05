#ifndef __ORG_XMLVM_IPHONE_UIKEYBOARDTYPE__
#define __ORG_XMLVM_IPHONE_UIKEYBOARDTYPE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIKeyboardType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIKeyboardType, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIKeyboardType)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardType;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardType_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardType_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardType_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIKeyboardType
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIKeyboardType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIKeyboardType \
    } org_xmlvm_iphone_UIKeyboardType

struct org_xmlvm_iphone_UIKeyboardType {
    __TIB_DEFINITION_org_xmlvm_iphone_UIKeyboardType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIKeyboardType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIKeyboardType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIKeyboardType
typedef struct org_xmlvm_iphone_UIKeyboardType org_xmlvm_iphone_UIKeyboardType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIKeyboardType 6

void __INIT_org_xmlvm_iphone_UIKeyboardType();
void __INIT_IMPL_org_xmlvm_iphone_UIKeyboardType();
void __DELETE_org_xmlvm_iphone_UIKeyboardType(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIKeyboardType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIKeyboardType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardType();
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_Default();
void org_xmlvm_iphone_UIKeyboardType_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_ASCIICapable();
void org_xmlvm_iphone_UIKeyboardType_PUT_ASCIICapable(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NumbersAndPunctuation();
void org_xmlvm_iphone_UIKeyboardType_PUT_NumbersAndPunctuation(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_URL();
void org_xmlvm_iphone_UIKeyboardType_PUT_URL(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NumberPad();
void org_xmlvm_iphone_UIKeyboardType_PUT_NumberPad(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_PhonePad();
void org_xmlvm_iphone_UIKeyboardType_PUT_PhonePad(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_NamePhonePad();
void org_xmlvm_iphone_UIKeyboardType_PUT_NamePhonePad(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_EmailAddress();
void org_xmlvm_iphone_UIKeyboardType_PUT_EmailAddress(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardType_GET_Alphabet();
void org_xmlvm_iphone_UIKeyboardType_PUT_Alphabet(JAVA_INT v);

#endif
