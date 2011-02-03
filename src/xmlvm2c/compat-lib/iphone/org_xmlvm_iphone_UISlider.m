#include "xmlvm.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UISlider.h"

__TIB_DEFINITION_org_xmlvm_iphone_UISlider __TIB_org_xmlvm_iphone_UISlider = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UISlider, // classInitializer
    "org.xmlvm.iphone.UISlider", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISlider;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISlider_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UISlider();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UISlider___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UISlider___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UISlider()
{
    __TIB_org_xmlvm_iphone_UISlider.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __TIB_org_xmlvm_iphone_UISlider.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISlider;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISlider.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UISlider.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_setValue___float;
    __TIB_org_xmlvm_iphone_UISlider.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_getValue__;
    __TIB_org_xmlvm_iphone_UISlider.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_setMinimumValue___float;
    __TIB_org_xmlvm_iphone_UISlider.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_getMinimumValue__;
    __TIB_org_xmlvm_iphone_UISlider.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_setMaximumValue___float;
    __TIB_org_xmlvm_iphone_UISlider.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_getMaximumValue__;
    __TIB_org_xmlvm_iphone_UISlider.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UISlider.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISlider.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UISlider.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISlider.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISlider.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UISlider.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISlider.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UISlider = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UISlider);
    __TIB_org_xmlvm_iphone_UISlider.clazz = __CLASS_org_xmlvm_iphone_UISlider;
    __CLASS_org_xmlvm_iphone_UISlider_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISlider, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISlider]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UISlider(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISlider]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISlider()
{
    if (!__TIB_org_xmlvm_iphone_UISlider.classInitialized) __INIT_org_xmlvm_iphone_UISlider();
    org_xmlvm_iphone_UISlider* me = (org_xmlvm_iphone_UISlider*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISlider));
    me->tib = &__TIB_org_xmlvm_iphone_UISlider;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISlider]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISlider()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISlider();
    org_xmlvm_iphone_UISlider___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UISlider___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider_setValue___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_setValue___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UISlider_getValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_getValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider_setMinimumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_setMinimumValue___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UISlider_getMinimumValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_getMinimumValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider_setMaximumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_setMaximumValue___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UISlider_getMaximumValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_getMaximumValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

