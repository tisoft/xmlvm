#include "org_xmlvm_iphone_UITextField.h"
#include "org_xmlvm_iphone_NSRange.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITextFieldDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITextFieldDelegate __CLASS_org_xmlvm_iphone_UITextFieldDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UITextFieldDelegate", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITextFieldDelegate()
{
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextFieldDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITextFieldDelegate.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextFieldDelegate]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UITextFieldDelegate(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextFieldDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextFieldDelegate()
{
    if (!__CLASS_org_xmlvm_iphone_UITextFieldDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITextFieldDelegate();
    org_xmlvm_iphone_UITextFieldDelegate* me = (org_xmlvm_iphone_UITextFieldDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextFieldDelegate));
    me->__class = &__CLASS_org_xmlvm_iphone_UITextFieldDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextFieldDelegate]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITextFieldDelegate);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextFieldDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITextFieldDelegate();
    org_xmlvm_iphone_UITextFieldDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITextFieldDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

