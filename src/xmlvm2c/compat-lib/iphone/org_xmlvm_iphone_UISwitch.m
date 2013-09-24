#include "xmlvm.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIEvent.h"

#include "org_xmlvm_iphone_UISwitch.h"

#define XMLVM_CURRENT_CLASS_NAME UISwitch
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UISwitch

__TIB_DEFINITION_org_xmlvm_iphone_UISwitch __TIB_org_xmlvm_iphone_UISwitch = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UISwitch, // classInitializer
    "org.xmlvm.iphone.UISwitch", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
    sizeof(org_xmlvm_iphone_UISwitch), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UISwitch.h>
#include "org_xmlvm_iphone_CGRect.h"
//XMLVM_END_IMPLEMENTATION

static JAVA_FLOAT _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth;
static JAVA_FLOAT _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kSwitchButtonWidth",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth,
    "",
    JAVA_NULL},
    {"kSwitchButtonHeight",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight,
    "",
    JAVA_NULL},
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UISwitch();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UISwitch___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setOn",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isOn",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setFrame",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesEnded",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Set;Lorg/xmlvm/iphone/UIEvent;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UISwitch_setOn___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 1:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UISwitch_isOn__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 2:
        org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UISwitch()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UISwitch);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UISwitch.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UISwitch.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UISwitch);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UISwitch.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UISwitch.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UISwitch.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UISwitch")
        __INIT_IMPL_org_xmlvm_iphone_UISwitch();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UISwitch()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControl)
    __TIB_org_xmlvm_iphone_UISwitch.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISwitch;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISwitch.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UISwitch.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect;
    __TIB_org_xmlvm_iphone_UISwitch.vtable[8] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UISwitch.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISwitch.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth = 94.0;
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight = 27.0;

    __TIB_org_xmlvm_iphone_UISwitch.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISwitch.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISwitch.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UISwitch.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISwitch.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISwitch.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UISwitch.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISwitch.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UISwitch = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UISwitch);
    __TIB_org_xmlvm_iphone_UISwitch.clazz = __CLASS_org_xmlvm_iphone_UISwitch;
    __TIB_org_xmlvm_iphone_UISwitch.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UISwitch_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISwitch);
    __CLASS_org_xmlvm_iphone_UISwitch_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISwitch_1ARRAY);
    __CLASS_org_xmlvm_iphone_UISwitch_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISwitch_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UISwitch.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UISwitch(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISwitch]
    __DELETE_org_xmlvm_iphone_UIControl(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISwitch(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISwitch()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UISwitch)
org_xmlvm_iphone_UISwitch* me = (org_xmlvm_iphone_UISwitch*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISwitch));
    me->tib = &__TIB_org_xmlvm_iphone_UISwitch;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISwitch(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISwitch()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISwitch();
    org_xmlvm_iphone_UISwitch___INIT___(me);
    return me;
}

JAVA_FLOAT org_xmlvm_iphone_UISwitch_GET_kSwitchButtonWidth()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UISwitch)
    return _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth;
}

void org_xmlvm_iphone_UISwitch_PUT_kSwitchButtonWidth(JAVA_FLOAT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UISwitch)
_STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth = v;
}

JAVA_FLOAT org_xmlvm_iphone_UISwitch_GET_kSwitchButtonHeight()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UISwitch)
    return _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight;
}

void org_xmlvm_iphone_UISwitch_PUT_kSwitchButtonHeight(JAVA_FLOAT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UISwitch)
_STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight = v;
}

void org_xmlvm_iphone_UISwitch___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch___INIT___]
    UISwitch* obj = [[UISwitch alloc] init];
    org_xmlvm_iphone_UIControl_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect]
    UISwitch* obj = [[UISwitch alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_iphone_UIControl_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_setOn___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_setOn___boolean]
    XMLVM_VAR_THIZ;
    [thiz setOn:n1];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISwitch_isOn__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_isOn__]
    XMLVM_VAR_THIZ;
    return [thiz isOn];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect]
    XMLVM_VAR_THIZ;
    [thiz setFrame:toCGRect(n1)];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    //XMLVM_END_WRAPPER
}

