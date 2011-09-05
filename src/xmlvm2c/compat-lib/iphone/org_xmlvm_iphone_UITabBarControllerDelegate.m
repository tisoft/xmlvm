#include "xmlvm.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UITabBarController.h"
#include "org_xmlvm_iphone_UIViewController.h"

#include "org_xmlvm_iphone_UITabBarControllerDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UITabBarControllerDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITabBarControllerDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UITabBarControllerDelegate __TIB_org_xmlvm_iphone_UITabBarControllerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UITabBarControllerDelegate, // classInitializer
    "org.xmlvm.iphone.UITabBarControllerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UITabBarControllerDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITabBarControllerDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITabBarControllerDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarController,
    &__CLASS_org_xmlvm_iphone_UIViewController,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarController,
    &__CLASS_org_xmlvm_iphone_UIViewController,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarController,
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarController,
    &__CLASS_java_util_ArrayList,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarController,
    &__CLASS_java_util_ArrayList,
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"shouldSelectViewController",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didSelectViewController",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willBeginCustomizingViewControllers",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willEndCustomizingViewControllers",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didEndCustomizingViewControllers",
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
        org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController(receiver, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController(receiver, argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean(receiver, argsArray[0], argsArray[1], ((java_lang_Boolean*) argsArray[2])->fields.java_lang_Boolean.value_);
        break;
    case 4:
        org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean(receiver, argsArray[0], argsArray[1], ((java_lang_Boolean*) argsArray[2])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UITabBarControllerDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UITabBarControllerDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UITabBarControllerDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UITabBarControllerDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarControllerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITabBarControllerDelegate);
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.clazz = __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarControllerDelegate);
    __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UITabBarControllerDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarControllerDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITabBarControllerDelegate();
    org_xmlvm_iphone_UITabBarControllerDelegate* me = (org_xmlvm_iphone_UITabBarControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarControllerDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBarControllerDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarControllerDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarControllerDelegate();
    org_xmlvm_iphone_UITabBarControllerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarControllerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

