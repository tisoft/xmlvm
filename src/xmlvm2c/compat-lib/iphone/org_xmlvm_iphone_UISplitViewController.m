#include "xmlvm.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_UISplitViewControllerDelegate.h"

#include "org_xmlvm_iphone_UISplitViewController.h"

#define XMLVM_CURRENT_CLASS_NAME UISplitViewController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UISplitViewController

__TIB_DEFINITION_org_xmlvm_iphone_UISplitViewController __TIB_org_xmlvm_iphone_UISplitViewController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UISplitViewController, // classInitializer
    "org.xmlvm.iphone.UISplitViewController", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIViewController, // extends
    sizeof(org_xmlvm_iphone_UISplitViewController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISplitViewController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISplitViewController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISplitViewController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISplitViewController_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_UISplitViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UISplitViewController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UISplitViewController___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISplitViewControllerDelegate,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getViewControllers",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setViewControllers",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UISplitViewControllerDelegate;",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UISplitViewControllerDelegate;)V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_UISplitViewController_getViewControllers__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_UISplitViewController_setViewControllers___java_util_List(receiver, argsArray[0]);
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UISplitViewController_getDelegate__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UISplitViewController_setDelegate___org_xmlvm_iphone_UISplitViewControllerDelegate(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UISplitViewController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UISplitViewController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UISplitViewController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UISplitViewController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UISplitViewController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UISplitViewController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UISplitViewController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UISplitViewController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UISplitViewController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UISplitViewController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_org_xmlvm_iphone_UIViewController();
    __TIB_org_xmlvm_iphone_UISplitViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISplitViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISplitViewController.vtable, __TIB_org_xmlvm_iphone_UIViewController.vtable, sizeof(__TIB_org_xmlvm_iphone_UIViewController.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UISplitViewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISplitViewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UISplitViewController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISplitViewController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISplitViewController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UISplitViewController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISplitViewController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISplitViewController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UISplitViewController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISplitViewController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UISplitViewController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UISplitViewController);
    __TIB_org_xmlvm_iphone_UISplitViewController.clazz = __CLASS_org_xmlvm_iphone_UISplitViewController;
    __TIB_org_xmlvm_iphone_UISplitViewController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UISplitViewController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISplitViewController);
    __CLASS_org_xmlvm_iphone_UISplitViewController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISplitViewController_1ARRAY);
    __CLASS_org_xmlvm_iphone_UISplitViewController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISplitViewController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISplitViewController]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UISplitViewController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UISplitViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISplitViewController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISplitViewController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISplitViewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISplitViewController()
{
    if (!__TIB_org_xmlvm_iphone_UISplitViewController.classInitialized) __INIT_org_xmlvm_iphone_UISplitViewController();
    org_xmlvm_iphone_UISplitViewController* me = (org_xmlvm_iphone_UISplitViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISplitViewController));
    me->tib = &__TIB_org_xmlvm_iphone_UISplitViewController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISplitViewController(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISplitViewController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISplitViewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISplitViewController();
    org_xmlvm_iphone_UISplitViewController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UISplitViewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISplitViewController___INIT___]
    UISplitViewController* obj = [[UISplitViewController alloc] init];
    org_xmlvm_iphone_UISplitViewController_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISplitViewController_getViewControllers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISplitViewController_getViewControllers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISplitViewController_setViewControllers___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISplitViewController_setViewControllers___java_util_List]
    XMLVM_VAR_THIZ;
    NSMutableArray* vcs = [[NSMutableArray alloc] init];
    int size = XMLVMUtil_ArrayList_size(n1);
    for (int i = 0; i < size; i++) {
        org_xmlvm_iphone_NSObject* jvc = XMLVMUtil_ArrayList_get(n1, i);
        NSObject* vc = jvc->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
        [vcs addObject:vc];
    }
    thiz.viewControllers = vcs;
    [vcs release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISplitViewController_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISplitViewController_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISplitViewController_setDelegate___org_xmlvm_iphone_UISplitViewControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISplitViewController_setDelegate___org_xmlvm_iphone_UISplitViewControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

