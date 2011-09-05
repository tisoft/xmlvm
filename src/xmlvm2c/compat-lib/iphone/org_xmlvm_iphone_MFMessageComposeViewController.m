#include "xmlvm.h"
#include "org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.h"
#include "java_util_ArrayList.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MFMessageComposeViewController.h"

#define XMLVM_CURRENT_CLASS_NAME MFMessageComposeViewController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MFMessageComposeViewController

__TIB_DEFINITION_org_xmlvm_iphone_MFMessageComposeViewController __TIB_org_xmlvm_iphone_MFMessageComposeViewController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MFMessageComposeViewController, // classInitializer
    "org.xmlvm.iphone.MFMessageComposeViewController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UINavigationController, // extends
    sizeof(org_xmlvm_iphone_MFMessageComposeViewController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewController_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MFMessageComposeViewController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MFMessageComposeViewController___INIT___(obj);
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
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"canSendText",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBody",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBody",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getRecipients",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setRecipients",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMessageComposeDelegate",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setMessageComposeDelegate",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_MFMessageComposeViewController_canSendText__();
        break;
    case 1:
        org_xmlvm_iphone_MFMessageComposeViewController_getBody__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_MFMessageComposeViewController_setBody___java_lang_String(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_MFMessageComposeViewController_getRecipients__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_MFMessageComposeViewController_setRecipients___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_MFMessageComposeViewController_getMessageComposeDelegate__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_MFMessageComposeViewController_setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MFMessageComposeViewController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MFMessageComposeViewController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MFMessageComposeViewController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MFMessageComposeViewController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MFMessageComposeViewController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MFMessageComposeViewController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MFMessageComposeViewController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UINavigationController.classInitialized) __INIT_org_xmlvm_iphone_UINavigationController();
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MFMessageComposeViewController.vtable, __TIB_org_xmlvm_iphone_UINavigationController.vtable, sizeof(__TIB_org_xmlvm_iphone_UINavigationController.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MFMessageComposeViewController);
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.clazz = __CLASS_org_xmlvm_iphone_MFMessageComposeViewController;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMessageComposeViewController);
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMessageComposeViewController_1ARRAY);
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMessageComposeViewController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MFMessageComposeViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMessageComposeViewController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationController(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMessageComposeViewController()
{
    if (!__TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewController();
    org_xmlvm_iphone_MFMessageComposeViewController* me = (org_xmlvm_iphone_MFMessageComposeViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMessageComposeViewController));
    me->tib = &__TIB_org_xmlvm_iphone_MFMessageComposeViewController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMessageComposeViewController(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMessageComposeViewController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMessageComposeViewController();
    org_xmlvm_iphone_MFMessageComposeViewController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMessageComposeViewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MFMessageComposeViewController_canSendText__()
{
    if (!__TIB_org_xmlvm_iphone_MFMessageComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_canSendText__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMessageComposeViewController_getBody__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_getBody__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMessageComposeViewController_setBody___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_setBody___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMessageComposeViewController_getRecipients__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_getRecipients__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMessageComposeViewController_setRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_setRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMessageComposeViewController_getMessageComposeDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_getMessageComposeDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMessageComposeViewController_setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewController_setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

