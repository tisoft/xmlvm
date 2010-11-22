#include "org_xmlvm_iphone_UIFont.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITextView.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITextView __CLASS_org_xmlvm_iphone_UITextView = {
    0, // classInitialized
    "org.xmlvm.iphone.UITextView", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITextView()
{
    __CLASS_org_xmlvm_iphone_UITextView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UITextView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITextView.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UITextView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getAutocapitalizationType__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setAutocapitalizationType___int;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getAutocorrectionType__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setAutocorrectionType___int;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_isEnablesReturnKeyAutomatically__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setEnablesReturnKeyAutomatically___boolean;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getKeyboardAppearance__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setKeyboardAppearance___int;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getKeyboardType__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setKeyboardType___int;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getReturnKeyType__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setReturnKeyType___int;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_isSecureTextEntry__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setSecureTextEntry___boolean;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getFont__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setFont___org_xmlvm_iphone_UIFont;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setText___java_lang_String;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getText__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setTextColor___org_xmlvm_iphone_UIColor;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getTextColor__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_getTextAlignment__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[93] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setTextAlignment___int;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[42] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_keyTyped___char;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[94] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_isEditable__;
    __CLASS_org_xmlvm_iphone_UITextView.vtable[95] = (VTABLE_PTR) &org_xmlvm_iphone_UITextView_setEditable___boolean;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITextView.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITextView.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITextView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextView()
{
    if (!__CLASS_org_xmlvm_iphone_UITextView.classInitialized) __INIT_org_xmlvm_iphone_UITextView();
    org_xmlvm_iphone_UITextView* me = (org_xmlvm_iphone_UITextView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextView));
    me->__class = &__CLASS_org_xmlvm_iphone_UITextView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITextView();
    org_xmlvm_iphone_UITextView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITextView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITextView_getAutocapitalizationType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getAutocapitalizationType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setAutocapitalizationType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setAutocapitalizationType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITextView_getAutocorrectionType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getAutocorrectionType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setAutocorrectionType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setAutocorrectionType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextView_isEnablesReturnKeyAutomatically__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_isEnablesReturnKeyAutomatically__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setEnablesReturnKeyAutomatically___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setEnablesReturnKeyAutomatically___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITextView_getKeyboardAppearance__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getKeyboardAppearance__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setKeyboardAppearance___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setKeyboardAppearance___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITextView_getKeyboardType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getKeyboardType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setKeyboardType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setKeyboardType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITextView_getReturnKeyType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getReturnKeyType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setReturnKeyType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setReturnKeyType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextView_isSecureTextEntry__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_isSecureTextEntry__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setSecureTextEntry___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setSecureTextEntry___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITextView_getFont__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getFont__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setFont___org_xmlvm_iphone_UIFont(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setFont___org_xmlvm_iphone_UIFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setText___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITextView_getText__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getText__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setTextColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setTextColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITextView_getTextColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getTextColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITextView_getTextAlignment__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_getTextAlignment__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setTextAlignment___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setTextAlignment___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_keyTyped___char(JAVA_OBJECT me, JAVA_CHAR n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_keyTyped___char]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextView_isEditable__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_isEditable__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextView_setEditable___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextView_setEditable___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

