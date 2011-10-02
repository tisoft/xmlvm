#include "xmlvm.h"
#include "org_xmlvm_iphone_MFMessageComposeViewController.h"

#include "org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME MFMessageComposeViewControllerDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MFMessageComposeViewControllerDelegate

__TIB_DEFINITION_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate, // classInitializer
    "org.xmlvm.iphone.MFMessageComposeViewControllerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_MFMessageComposeViewControllerDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MFMessageComposeViewControllerDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate);
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.clazz = __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate);
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMessageComposeViewControllerDelegate* me = (org_xmlvm_iphone_MFMessageComposeViewControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMessageComposeViewControllerDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMessageComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMessageComposeViewControllerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMessageComposeViewControllerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMessageComposeViewControllerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

