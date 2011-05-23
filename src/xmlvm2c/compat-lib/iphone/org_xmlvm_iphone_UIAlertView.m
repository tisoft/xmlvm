#include "xmlvm.h"
#include "org_xmlvm_iphone_UILabel.h"
#include "org_xmlvm_iphone_UIAlertViewDelegate.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIAlertView.h"

#define XMLVM_CURRENT_CLASS_NAME UIAlertView
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIAlertView

__TIB_DEFINITION_org_xmlvm_iphone_UIAlertView __TIB_org_xmlvm_iphone_UIAlertView = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIAlertView, // classInitializer
    "org.xmlvm.iphone.UIAlertView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIAlertView), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertView_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertView_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertView_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include "org_xmlvm_iphone_UILabel.h"
#include "org_xmlvm_iphone_NSString.h"
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_UIAlertViewDelegate,
    &__CLASS_java_lang_String,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIAlertView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String(obj, argsArray[0], argsArray[1], argsArray[2], argsArray[3]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UILabel,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"dummyMethod",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"show",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitle",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTitle",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setMessage",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMesssage",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addButtonWithTitle",
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
        org_xmlvm_iphone_UIAlertView_dummyMethod___org_xmlvm_iphone_UILabel(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UIAlertView_show__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UIAlertView_getTitle__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UIAlertView_getMesssage__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIAlertView()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIAlertView);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIAlertView.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIAlertView.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIAlertView);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIAlertView.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIAlertView.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIAlertView.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIAlertView();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIAlertView()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIAlertView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAlertView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIAlertView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIAlertView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIAlertView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIAlertView.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAlertView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAlertView.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIAlertView.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAlertView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAlertView.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIAlertView.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAlertView.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIAlertView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIAlertView);
    __TIB_org_xmlvm_iphone_UIAlertView.clazz = __CLASS_org_xmlvm_iphone_UIAlertView;
    __TIB_org_xmlvm_iphone_UIAlertView.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIAlertView_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAlertView);
    __CLASS_org_xmlvm_iphone_UIAlertView_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAlertView_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIAlertView_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAlertView_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIAlertView.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIAlertView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAlertView(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAlertView()
{
    if (!__TIB_org_xmlvm_iphone_UIAlertView.classInitialized) __INIT_org_xmlvm_iphone_UIAlertView();
    org_xmlvm_iphone_UIAlertView* me = (org_xmlvm_iphone_UIAlertView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAlertView));
    me->tib = &__TIB_org_xmlvm_iphone_UIAlertView;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAlertView(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAlertView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAlertView()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIAlertView_dummyMethod___org_xmlvm_iphone_UILabel(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_dummyMethod___org_xmlvm_iphone_UILabel]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_NSString(title, n1);
    XMLVM_VAR_NSString(message, n2);
//    XMLVM_VAR_IOS(UIAlertViewDelegate, delegate, n3);
    org_xmlvm_iphone_UIAlertViewDelegate* jdelegate = n3;
    UIAlertViewDelegateWrapper* delegate = jdelegate->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    XMLVM_VAR_NSString(cancelButtonTitle, n4);
    
    [delegate setAlertView:me];
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];
    [title release];
    [message release];
    [cancelButtonTitle release];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, alertView);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_show__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_show__]
    org_xmlvm_iphone_UIAlertView* thiz = me;
    [((UIAlertView*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) show];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String]
    org_xmlvm_iphone_UIAlertView* thiz = me;
    NSString* title = toNSString(n1);
    [((UIAlertView*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) setTitle:title];
    [title release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIAlertView_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String]
    org_xmlvm_iphone_UIAlertView* thiz = me;
    NSString* message = toNSString(n1);
    [((UIAlertView*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) setMessage:message];
    [message release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIAlertView_getMesssage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_getMesssage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String]
    org_xmlvm_iphone_UIAlertView* thiz = me;
    NSString* title = toNSString(n1);
    JAVA_INT ret = [((UIAlertView*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) addButtonWithTitle:title];
    [title release];
    return ret;
    //XMLVM_END_WRAPPER
}

