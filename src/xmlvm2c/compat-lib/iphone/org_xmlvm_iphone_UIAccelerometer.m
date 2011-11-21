#include "xmlvm.h"
#include "org_xmlvm_iphone_UIAccelerometerDelegate.h"

#include "org_xmlvm_iphone_UIAccelerometer.h"

#define XMLVM_CURRENT_CLASS_NAME UIAccelerometer
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIAccelerometer

__TIB_DEFINITION_org_xmlvm_iphone_UIAccelerometer __TIB_org_xmlvm_iphone_UIAccelerometer = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIAccelerometer, // classInitializer
    "org.xmlvm.iphone.UIAccelerometer", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIAccelerometer), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometer;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometer_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometer_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAccelerometer_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "org_xmlvm_iphone_UIAcceleration.h"

@interface UIAccelerometerDelegateWrapper : NSObject <UIAccelerometerDelegate> {
    
    JAVA_OBJECT delegate;
    JAVA_OBJECT accelerometer;
}

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
                       :(JAVA_OBJECT) accelerometer_;
- (void) accelerometer:(UIAccelerometer*) accelerometer didAccelerate:(UIAcceleration*) acceleration;
@end


@implementation UIAccelerometerDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
                       :(JAVA_OBJECT) accelerometer_
{
    [super init];
    self->delegate = delegate_;
    self->accelerometer = accelerometer_;
    return self;
}


- (void) accelerometer:(UIAccelerometer*) accelerometer didAccelerate:(UIAcceleration*) acceleration
{
    org_xmlvm_iphone_UIAcceleration* a = __NEW_org_xmlvm_iphone_UIAcceleration();
    org_xmlvm_iphone_UIAcceleration___INIT____double_double_double(a, acceleration.x, acceleration.y, acceleration.z);
    Func_VOOO toCall = *(((java_lang_Object*)self->delegate)->tib->itableBegin)[XMLVM_ITABLE_IDX_org_xmlvm_iphone_UIAccelerometerDelegate_accelerometerDidAccelerate___org_xmlvm_iphone_UIAccelerometer_org_xmlvm_iphone_UIAcceleration];
	toCall(self->delegate, self->accelerometer, a);
}

@end

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIAccelerometer();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIAccelerometerDelegate,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"sharedAccelerometer",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setUpdateInterval",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIAccelerometer_sharedAccelerometer__();
        break;
    case 1:
        org_xmlvm_iphone_UIAccelerometer_setUpdateInterval___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 2:
        org_xmlvm_iphone_UIAccelerometer_setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIAccelerometer()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIAccelerometer);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIAccelerometer.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIAccelerometer.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIAccelerometer);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIAccelerometer.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIAccelerometer.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIAccelerometer.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIAccelerometer();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIAccelerometer()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIAccelerometer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAccelerometer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIAccelerometer.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIAccelerometer.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIAccelerometer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIAccelerometer.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAccelerometer.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAccelerometer.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIAccelerometer.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAccelerometer.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAccelerometer.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIAccelerometer.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAccelerometer.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIAccelerometer = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIAccelerometer);
    __TIB_org_xmlvm_iphone_UIAccelerometer.clazz = __CLASS_org_xmlvm_iphone_UIAccelerometer;
    __TIB_org_xmlvm_iphone_UIAccelerometer.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIAccelerometer_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometer);
    __CLASS_org_xmlvm_iphone_UIAccelerometer_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometer_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIAccelerometer_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAccelerometer_2ARRAY);
    org_xmlvm_iphone_UIAccelerometer___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAccelerometer]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIAccelerometer.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIAccelerometer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAccelerometer]
	org_xmlvm_iphone_UIAccelerometer* thiz = me;
    [thiz->fields.org_xmlvm_iphone_UIAccelerometer.delegateObjC release];
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAccelerometer(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAccelerometer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAccelerometer()
{
    if (!__TIB_org_xmlvm_iphone_UIAccelerometer.classInitialized) __INIT_org_xmlvm_iphone_UIAccelerometer();
    org_xmlvm_iphone_UIAccelerometer* me = (org_xmlvm_iphone_UIAccelerometer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAccelerometer));
    me->tib = &__TIB_org_xmlvm_iphone_UIAccelerometer;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAccelerometer(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAccelerometer]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAccelerometer()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIAccelerometer_sharedAccelerometer__()
{
    if (!__TIB_org_xmlvm_iphone_UIAccelerometer.classInitialized) __INIT_org_xmlvm_iphone_UIAccelerometer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAccelerometer_sharedAccelerometer__]
    org_xmlvm_iphone_UIAccelerometer* me = __NEW_org_xmlvm_iphone_UIAccelerometer();
    UIAccelerometer* sharedAccelerometer = [UIAccelerometer sharedAccelerometer];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, sharedAccelerometer);
	return me;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAccelerometer_setUpdateInterval___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAccelerometer_setUpdateInterval___double]
    org_xmlvm_iphone_UIAccelerometer* thiz = me;
    UIAccelerometer* accelerometer = thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    [accelerometer setUpdateInterval:n1];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAccelerometer_setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAccelerometer_setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate]
    org_xmlvm_iphone_UIAccelerometer* thiz = me;
    if (thiz->fields.org_xmlvm_iphone_UIAccelerometer.delegateObjC != nil) {
        [thiz->fields.org_xmlvm_iphone_UIAccelerometer.delegateObjC release];
    }
    UIAccelerometerDelegateWrapper* delegateWrapper = [[UIAccelerometerDelegateWrapper alloc] initWithDelegate:n1:me];
    [((UIAccelerometer*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) setDelegate:delegateWrapper];
    thiz->fields.org_xmlvm_iphone_UIAccelerometer.delegateObjC = delegateWrapper;
    // We keep a C-reference to the delegate to tell the GC about the association
    thiz->fields.org_xmlvm_iphone_UIAccelerometer.delegateC = n1;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAccelerometer___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAccelerometer___CLINIT___]
    //XMLVM_END_WRAPPER
}

