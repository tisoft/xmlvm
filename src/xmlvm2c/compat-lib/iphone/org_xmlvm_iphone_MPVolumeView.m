#include "xmlvm.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_MPVolumeView.h"

#define XMLVM_CURRENT_CLASS_NAME MPVolumeView
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MPVolumeView

__TIB_DEFINITION_org_xmlvm_iphone_MPVolumeView __TIB_org_xmlvm_iphone_MPVolumeView = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MPVolumeView, // classInitializer
    "org.xmlvm.iphone.MPVolumeView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_MPVolumeView), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPVolumeView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPVolumeView_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPVolumeView_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPVolumeView_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MPVolumeView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MPVolumeView___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_MPVolumeView___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGSize,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"sizeThatFits",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isShowsRouteButton",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShowsRouteButton",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isShowsVolumeSlider",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShowsVolumeSlider",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_MPVolumeView_sizeThatFits___org_xmlvm_iphone_CGSize(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_MPVolumeView_isShowsRouteButton__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_MPVolumeView_setShowsRouteButton___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 3:
        org_xmlvm_iphone_MPVolumeView_isShowsVolumeSlider__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_MPVolumeView_setShowsVolumeSlider___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MPVolumeView()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MPVolumeView);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MPVolumeView.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MPVolumeView.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MPVolumeView);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MPVolumeView.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MPVolumeView.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MPVolumeView.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MPVolumeView();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MPVolumeView()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_MPVolumeView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MPVolumeView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MPVolumeView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_MPVolumeView.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_MPVolumeView_sizeThatFits___org_xmlvm_iphone_CGSize;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MPVolumeView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MPVolumeView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_MPVolumeView.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MPVolumeView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MPVolumeView.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MPVolumeView.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MPVolumeView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MPVolumeView.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MPVolumeView.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MPVolumeView.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MPVolumeView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MPVolumeView);
    __TIB_org_xmlvm_iphone_MPVolumeView.clazz = __CLASS_org_xmlvm_iphone_MPVolumeView;
    __TIB_org_xmlvm_iphone_MPVolumeView.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MPVolumeView_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MPVolumeView);
    __CLASS_org_xmlvm_iphone_MPVolumeView_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MPVolumeView_1ARRAY);
    __CLASS_org_xmlvm_iphone_MPVolumeView_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MPVolumeView_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MPVolumeView]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MPVolumeView.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MPVolumeView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MPVolumeView]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MPVolumeView(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MPVolumeView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MPVolumeView()
{
    if (!__TIB_org_xmlvm_iphone_MPVolumeView.classInitialized) __INIT_org_xmlvm_iphone_MPVolumeView();
    org_xmlvm_iphone_MPVolumeView* me = (org_xmlvm_iphone_MPVolumeView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MPVolumeView));
    me->tib = &__TIB_org_xmlvm_iphone_MPVolumeView;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MPVolumeView(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MPVolumeView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MPVolumeView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MPVolumeView();
    org_xmlvm_iphone_MPVolumeView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MPVolumeView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPVolumeView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPVolumeView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPVolumeView___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MPVolumeView_sizeThatFits___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPVolumeView_sizeThatFits___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MPVolumeView_isShowsRouteButton__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPVolumeView_isShowsRouteButton__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPVolumeView_setShowsRouteButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPVolumeView_setShowsRouteButton___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MPVolumeView_isShowsVolumeSlider__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPVolumeView_isShowsVolumeSlider__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MPVolumeView_setShowsVolumeSlider___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MPVolumeView_setShowsVolumeSlider___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

