#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_NSNotification.h"
#include "org_xmlvm_iphone_NSNotificationDelegate.h"

#include "org_xmlvm_iphone_NSNotificationCenter.h"

#define XMLVM_CURRENT_CLASS_NAME NSNotificationCenter
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSNotificationCenter

__TIB_DEFINITION_org_xmlvm_iphone_NSNotificationCenter __TIB_org_xmlvm_iphone_NSNotificationCenter = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNotificationCenter, // classInitializer
    "org.xmlvm.iphone.NSNotificationCenter", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSNotificationCenter), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNotificationCenter;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNotificationCenter_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNotificationCenter_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNotificationCenter_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>

#include "xmlvm-util.h"

static JAVA_OBJECT observers = JAVA_NULL;

@interface NSNotificationDelegateWrapper : NSObject {
    JAVA_OBJECT target;
}

- (id) initWithParams:(JAVA_OBJECT) target_;

- (void) notify: (NSNotification*) notification;
@end

@implementation NSNotificationDelegateWrapper

- (id) initWithParams:(JAVA_OBJECT) target_
{
    [super init];
    self->target = target_;
    return self;
}

- (void) notify: (NSNotification*) notification
{
    //TODO convert notification
    JAVA_OBJECT jnotification = JAVA_NULL;
    (*(void (*)(JAVA_OBJECT, JAVA_OBJECT)) *(((java_lang_Object*) target)->tib->itableBegin)[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSNotificationDelegate_notify___org_xmlvm_iphone_NSNotification])(target, jnotification);
    
//    @synchronized (observers) {
//        // Remove target reference from handler list
//        XMLVMUtil_ArrayList_remove(observers, target);
//    }
//    [self release];
}

@end


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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSNotificationCenter();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSNotificationCenter___INIT___(obj);
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
    &__CLASS_org_xmlvm_iphone_NSNotificationDelegate,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNotification,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_Object,
    &__CLASS_java_util_Map,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"defaultCenter",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addObserver",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"postNotification",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"postNotificationName",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"postNotificationName",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"removeObserver",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"removeObserver",
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
        org_xmlvm_iphone_NSNotificationCenter_defaultCenter__();
        break;
    case 1:
        org_xmlvm_iphone_NSNotificationCenter_addObserver___org_xmlvm_iphone_NSNotificationDelegate_java_lang_String_java_lang_Object(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 2:
        org_xmlvm_iphone_NSNotificationCenter_postNotification___org_xmlvm_iphone_NSNotification(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_NSNotificationCenter_postNotificationName___java_lang_String_java_lang_Object(receiver, argsArray[0], argsArray[1]);
        break;
    case 4:
        org_xmlvm_iphone_NSNotificationCenter_postNotificationName___java_lang_String_java_lang_Object_java_util_Map(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 5:
        org_xmlvm_iphone_NSNotificationCenter_removeObserver___java_lang_Object(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_NSNotificationCenter_removeObserver___java_lang_Object_java_lang_String_java_lang_Object(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSNotificationCenter()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNotificationCenter);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNotificationCenter.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNotificationCenter.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNotificationCenter);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNotificationCenter.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNotificationCenter.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNotificationCenter.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSNotificationCenter();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNotificationCenter()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSNotificationCenter.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSNotificationCenter;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSNotificationCenter.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSNotificationCenter.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNotificationCenter.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSNotificationCenter.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNotificationCenter.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNotificationCenter.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSNotificationCenter.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNotificationCenter.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNotificationCenter.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSNotificationCenter.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNotificationCenter.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSNotificationCenter = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNotificationCenter);
    __TIB_org_xmlvm_iphone_NSNotificationCenter.clazz = __CLASS_org_xmlvm_iphone_NSNotificationCenter;
    __TIB_org_xmlvm_iphone_NSNotificationCenter.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNotificationCenter_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNotificationCenter);
    __CLASS_org_xmlvm_iphone_NSNotificationCenter_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNotificationCenter_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNotificationCenter_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNotificationCenter_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSNotificationCenter]
    observers = XMLVMUtil_NEW_ArrayList();
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSNotificationCenter.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSNotificationCenter(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSNotificationCenter]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNotificationCenter(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNotificationCenter]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNotificationCenter()
{
    if (!__TIB_org_xmlvm_iphone_NSNotificationCenter.classInitialized) __INIT_org_xmlvm_iphone_NSNotificationCenter();
    org_xmlvm_iphone_NSNotificationCenter* me = (org_xmlvm_iphone_NSNotificationCenter*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNotificationCenter));
    me->tib = &__TIB_org_xmlvm_iphone_NSNotificationCenter;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNotificationCenter(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSNotificationCenter]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNotificationCenter()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSNotificationCenter();
    org_xmlvm_iphone_NSNotificationCenter___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSNotificationCenter_defaultCenter__()
{
    if (!__TIB_org_xmlvm_iphone_NSNotificationCenter.classInitialized) __INIT_org_xmlvm_iphone_NSNotificationCenter();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNotificationCenter_defaultCenter__]
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSNotificationCenter();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(obj, [[NSNotificationCenter defaultCenter] retain]);
    return obj;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNotificationCenter___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNotificationCenter___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNotificationCenter_addObserver___org_xmlvm_iphone_NSNotificationDelegate_java_lang_String_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNotificationCenter_addObserver___org_xmlvm_iphone_NSNotificationDelegate_java_lang_String_java_lang_Object]
    if (n3 != JAVA_NULL) {
        XMLVM_NOT_IMPLEMENTED();
    }
    XMLVM_VAR_THIZ;
    XMLVM_VAR_NSString(kind, n2);
    
    XMLVMUtil_ArrayList_add(observers, n1);
    NSString* canonicalKind = nil;
    if ([kind isEqualToString:UIScreenDidConnectNotification]) {
        canonicalKind = UIScreenDidConnectNotification;
    } else if ([kind isEqualToString:UIScreenDidDisconnectNotification]) {
        canonicalKind = UIScreenDidDisconnectNotification;
    } else if ([kind isEqualToString:UIScreenModeDidChangeNotification]) {
        canonicalKind = UIScreenModeDidChangeNotification;
    } else {
        XMLVM_NOT_IMPLEMENTED();
    }
    NSNotificationDelegateWrapper* wrapper = [[NSNotificationDelegateWrapper alloc] initWithParams:n1];
    [thiz addObserver:wrapper selector:@selector(notify:) name:canonicalKind object:nil];
    [kind release];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNotificationCenter_postNotification___org_xmlvm_iphone_NSNotification(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNotificationCenter_postNotification___org_xmlvm_iphone_NSNotification]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNotificationCenter_postNotificationName___java_lang_String_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNotificationCenter_postNotificationName___java_lang_String_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNotificationCenter_postNotificationName___java_lang_String_java_lang_Object_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNotificationCenter_postNotificationName___java_lang_String_java_lang_Object_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNotificationCenter_removeObserver___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNotificationCenter_removeObserver___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNotificationCenter_removeObserver___java_lang_Object_java_lang_String_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNotificationCenter_removeObserver___java_lang_Object_java_lang_String_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

