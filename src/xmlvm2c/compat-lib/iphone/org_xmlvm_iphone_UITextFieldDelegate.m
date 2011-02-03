#include "xmlvm.h"
#include "org_xmlvm_iphone_UITextField.h"
#include "org_xmlvm_iphone_NSRange.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITextFieldDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITextFieldDelegate __TIB_org_xmlvm_iphone_UITextFieldDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITextFieldDelegate, // classInitializer
    "org.xmlvm.iphone.UITextFieldDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextFieldDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextFieldDelegate_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITextFieldDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITextFieldDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UITextFieldDelegate()
{
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextFieldDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITextFieldDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITextFieldDelegate);
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.clazz = __CLASS_org_xmlvm_iphone_UITextFieldDelegate;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITextFieldDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextFieldDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITextFieldDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextFieldDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextFieldDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UITextFieldDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITextFieldDelegate();
    org_xmlvm_iphone_UITextFieldDelegate* me = (org_xmlvm_iphone_UITextFieldDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextFieldDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UITextFieldDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextFieldDelegate]
    //XMLVM_END_WRAPPER
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

