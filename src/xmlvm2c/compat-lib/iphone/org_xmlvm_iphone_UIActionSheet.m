#include "xmlvm.h"
#include "org_xmlvm_iphone_UIToolbar.h"
#include "org_xmlvm_iphone_UITabBar.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_UIActionSheetDelegate.h"

#include "org_xmlvm_iphone_UIActionSheet.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIActionSheet __TIB_org_xmlvm_iphone_UIActionSheet = {
    0, // classInitialized
    "org.xmlvm.iphone.UIActionSheet", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIActionSheet();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIActionSheet()
{
    __TIB_org_xmlvm_iphone_UIActionSheet.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIActionSheet.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIActionSheet;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIActionSheet.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIActionSheet.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar;
    __TIB_org_xmlvm_iphone_UIActionSheet.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar;
    __TIB_org_xmlvm_iphone_UIActionSheet.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UIActionSheet.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIActionSheet.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIActionSheet.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIActionSheet.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActionSheet.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIActionSheet.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIActionSheet.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActionSheet.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIActionSheet = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIActionSheet);
    __TIB_org_xmlvm_iphone_UIActionSheet.clazz = __CLASS_org_xmlvm_iphone_UIActionSheet;
    __CLASS_org_xmlvm_iphone_UIActionSheet_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIActionSheet, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIActionSheet(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActionSheet()
{
    if (!__TIB_org_xmlvm_iphone_UIActionSheet.classInitialized) __INIT_org_xmlvm_iphone_UIActionSheet();
    org_xmlvm_iphone_UIActionSheet* me = (org_xmlvm_iphone_UIActionSheet*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIActionSheet));
    me->tib = &__TIB_org_xmlvm_iphone_UIActionSheet;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIActionSheet()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_ARRAYTYPE(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_OBJECT n5)
{
    if (!__TIB_org_xmlvm_iphone_UIActionSheet.classInitialized) __INIT_org_xmlvm_iphone_UIActionSheet();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_ARRAYTYPE]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

