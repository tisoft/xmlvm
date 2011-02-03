#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_UIPickerView.h"

#include "org_xmlvm_iphone_UIPickerViewDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIPickerViewDelegate __TIB_org_xmlvm_iphone_UIPickerViewDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIPickerViewDelegate, // classInitializer
    "org.xmlvm.iphone.UIPickerViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPickerViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPickerViewDelegate_ARRAYTYPE;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIPickerViewDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIPickerViewDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIPickerViewDelegate()
{
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPickerViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIPickerViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIPickerViewDelegate);
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.clazz = __CLASS_org_xmlvm_iphone_UIPickerViewDelegate;
    __CLASS_org_xmlvm_iphone_UIPickerViewDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPickerViewDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIPickerViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPickerViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIPickerViewDelegate();
    org_xmlvm_iphone_UIPickerViewDelegate* me = (org_xmlvm_iphone_UIPickerViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPickerViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UIPickerViewDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPickerViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPickerViewDelegate();
    org_xmlvm_iphone_UIPickerViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPickerViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

