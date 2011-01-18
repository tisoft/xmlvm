#include "xmlvm.h"
#include "org_xmlvm_iphone_UIAlertViewDelegate.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIAlertView.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIAlertView __TIB_org_xmlvm_iphone_UIAlertView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIAlertView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertView_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_UIAlertViewDelegate,
    &__CLASS_java_lang_String,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIAlertView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String(obj, argsArray[0], argsArray[1], argsArray[2], argsArray[3]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIAlertView()
{
    __TIB_org_xmlvm_iphone_UIAlertView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIAlertView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAlertView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIAlertView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIAlertView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_show__;
    __TIB_org_xmlvm_iphone_UIAlertView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String;
    __TIB_org_xmlvm_iphone_UIAlertView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_getTitle__;
    __TIB_org_xmlvm_iphone_UIAlertView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String;
    __TIB_org_xmlvm_iphone_UIAlertView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_getMesssage__;
    __TIB_org_xmlvm_iphone_UIAlertView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIAlertView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIAlertView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIAlertView.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAlertView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAlertView.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIAlertView.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAlertView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIAlertView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIAlertView);
    __TIB_org_xmlvm_iphone_UIAlertView.clazz = __CLASS_org_xmlvm_iphone_UIAlertView;
    __CLASS_org_xmlvm_iphone_UIAlertView_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAlertView, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIAlertView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAlertView()
{
    if (!__TIB_org_xmlvm_iphone_UIAlertView.classInitialized) __INIT_org_xmlvm_iphone_UIAlertView();
    org_xmlvm_iphone_UIAlertView* me = (org_xmlvm_iphone_UIAlertView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAlertView));
    me->tib = &__TIB_org_xmlvm_iphone_UIAlertView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAlertView()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_show__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_show__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIAlertView_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIAlertView_getMesssage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_getMesssage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_access$000___org_xmlvm_iphone_UIAlertView_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_UIAlertView.classInitialized) __INIT_org_xmlvm_iphone_UIAlertView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_access$000___org_xmlvm_iphone_UIAlertView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

