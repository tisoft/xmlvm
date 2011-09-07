#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_MFMailComposeViewControllerDelegate.h"
#include "org_xmlvm_iphone_NSString.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MFMailComposeViewController.h"

#define XMLVM_CURRENT_CLASS_NAME MFMailComposeViewController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MFMailComposeViewController

__TIB_DEFINITION_org_xmlvm_iphone_MFMailComposeViewController __TIB_org_xmlvm_iphone_MFMailComposeViewController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MFMailComposeViewController, // classInitializer
    "org.xmlvm.iphone.MFMailComposeViewController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UINavigationController, // extends
    sizeof(org_xmlvm_iphone_MFMailComposeViewController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeViewController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeViewController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeViewController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeViewController_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MFMailComposeViewController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MFMailComposeViewController___INIT___(obj);
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
    &__CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
    &__CLASS_org_xmlvm_iphone_NSString,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getMailComposeDelegate",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setMailComposeDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"canSendMail",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addAttachmentData",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBccRecipients",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setCcRecipients",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setMessageBody",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSubject",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setToRecipients",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_MFMailComposeViewController_canSendMail__();
        break;
    case 3:
        org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 4:
        org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 7:
        org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MFMailComposeViewController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MFMailComposeViewController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MFMailComposeViewController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MFMailComposeViewController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MFMailComposeViewController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MFMailComposeViewController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MFMailComposeViewController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UINavigationController.classInitialized) __INIT_org_xmlvm_iphone_UINavigationController();
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable, __TIB_org_xmlvm_iphone_UINavigationController.vtable, sizeof(__TIB_org_xmlvm_iphone_UINavigationController.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_MFMailComposeViewController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MFMailComposeViewController);
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.clazz = __CLASS_org_xmlvm_iphone_MFMailComposeViewController;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMailComposeViewController);
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMailComposeViewController_1ARRAY);
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMailComposeViewController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MFMailComposeViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMailComposeViewController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationController(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMailComposeViewController()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeViewController();
    org_xmlvm_iphone_MFMailComposeViewController* me = (org_xmlvm_iphone_MFMailComposeViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMailComposeViewController));
    me->tib = &__TIB_org_xmlvm_iphone_MFMailComposeViewController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMailComposeViewController(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMailComposeViewController();
    org_xmlvm_iphone_MFMailComposeViewController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMailComposeViewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MFMailComposeViewController_canSendMail__()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeViewController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_canSendMail__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

