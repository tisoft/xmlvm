#include "xmlvm.h"
#include "org_xmlvm_iphone_MFMailComposeViewController.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_MFMailComposeViewControllerDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME MFMailComposeViewControllerDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MFMailComposeViewControllerDelegate

__TIB_DEFINITION_org_xmlvm_iphone_MFMailComposeViewControllerDelegate __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MFMailComposeViewControllerDelegate, // classInitializer
    "org.xmlvm.iphone.MFMailComposeViewControllerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MFMailComposeViewControllerDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate_ARRAYTYPE;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MFMailComposeViewControllerDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MFMailComposeViewControllerDelegate___INIT___(obj);
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

void __INIT_org_xmlvm_iphone_MFMailComposeViewControllerDelegate()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate);
    if (!__TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_MFMailComposeViewControllerDelegate();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate);
}

void __INIT_IMPL_org_xmlvm_iphone_MFMailComposeViewControllerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate);
        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.clazz = __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate;
        __CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMailComposeViewControllerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMailComposeViewControllerDelegate* me = (org_xmlvm_iphone_MFMailComposeViewControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMailComposeViewControllerDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_MFMailComposeViewControllerDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMailComposeViewControllerDelegate(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewControllerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMailComposeViewControllerDelegate();
    org_xmlvm_iphone_MFMailComposeViewControllerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMailComposeViewControllerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewControllerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

