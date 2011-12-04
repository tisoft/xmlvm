#include "xmlvm.h"
#include "org_xmlvm_iphone_CMGyroData.h"
#include "org_xmlvm_iphone_CMGyroHandler.h"
#include "org_xmlvm_iphone_NSOperationQueue.h"

#include "org_xmlvm_iphone_CMMotionManager.h"

#define XMLVM_CURRENT_CLASS_NAME CMMotionManager
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CMMotionManager

__TIB_DEFINITION_org_xmlvm_iphone_CMMotionManager __TIB_org_xmlvm_iphone_CMMotionManager = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CMMotionManager, // classInitializer
    "org.xmlvm.iphone.CMMotionManager", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CMMotionManager), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMMotionManager;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMMotionManager_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMMotionManager_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMMotionManager_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <CoreMotion/CMMotionManager.h>
#import <Foundation/NSOperation.h>
#include "org_xmlvm_iphone_CMRotationRate.h"

void org_xmlvm_iphone_CMMotionManager_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [CMMotionManager class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_CMMotionManager();
        org_xmlvm_iphone_CMMotionManager_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
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
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CMMotionManager();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CMMotionManager___INIT___(obj);
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
    &__CLASS_double,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSOperationQueue,
    &__CLASS_org_xmlvm_iphone_CMGyroHandler,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"startGyroUpdates",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stopGyroUpdates",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setGyroUpdateInterval",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isGyroActive",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isGyroAvailable",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"gyroData",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"startGyroUpdatesToQueue",
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
        org_xmlvm_iphone_CMMotionManager_startGyroUpdates__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_CMMotionManager_stopGyroUpdates__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_CMMotionManager_setGyroUpdateInterval___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 3:
        org_xmlvm_iphone_CMMotionManager_isGyroActive__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_CMMotionManager_isGyroAvailable__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_CMMotionManager_gyroData__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_CMMotionManager_startGyroUpdatesToQueue___org_xmlvm_iphone_NSOperationQueue_org_xmlvm_iphone_CMGyroHandler(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CMMotionManager()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CMMotionManager);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CMMotionManager.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CMMotionManager.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CMMotionManager);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CMMotionManager.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CMMotionManager.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CMMotionManager.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CMMotionManager();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CMMotionManager()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CMMotionManager.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CMMotionManager;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CMMotionManager.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CMMotionManager.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CMMotionManager.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CMMotionManager.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMMotionManager.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CMMotionManager.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CMMotionManager.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMMotionManager.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CMMotionManager.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CMMotionManager.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMMotionManager.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CMMotionManager = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CMMotionManager);
    __TIB_org_xmlvm_iphone_CMMotionManager.clazz = __CLASS_org_xmlvm_iphone_CMMotionManager;
    __TIB_org_xmlvm_iphone_CMMotionManager.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CMMotionManager_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMMotionManager);
    __CLASS_org_xmlvm_iphone_CMMotionManager_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMMotionManager_1ARRAY);
    __CLASS_org_xmlvm_iphone_CMMotionManager_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMMotionManager_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CMMotionManager]
     xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CMMotionManager.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CMMotionManager(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CMMotionManager]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMMotionManager(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMMotionManager]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CMMotionManager()
{
    if (!__TIB_org_xmlvm_iphone_CMMotionManager.classInitialized) __INIT_org_xmlvm_iphone_CMMotionManager();
    org_xmlvm_iphone_CMMotionManager* me = (org_xmlvm_iphone_CMMotionManager*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CMMotionManager));
    me->tib = &__TIB_org_xmlvm_iphone_CMMotionManager;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMMotionManager(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CMMotionManager]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CMMotionManager()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CMMotionManager();
    org_xmlvm_iphone_CMMotionManager___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CMMotionManager___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMMotionManager___INIT___]
	CMMotionManager* obj = [[CMMotionManager alloc] init];
    org_xmlvm_iphone_CMMotionManager_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CMMotionManager_startGyroUpdates__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMMotionManager_startGyroUpdates__]
    XMLVM_VAR_THIZ;
    [thiz startGyroUpdates];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CMMotionManager_stopGyroUpdates__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMMotionManager_stopGyroUpdates__]
    XMLVM_VAR_THIZ;
    [thiz stopGyroUpdates];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CMMotionManager_setGyroUpdateInterval___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMMotionManager_setGyroUpdateInterval___double]
    XMLVM_VAR_THIZ;
    [thiz setGyroUpdateInterval:n1];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CMMotionManager_isGyroActive__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMMotionManager_isGyroActive__]
    XMLVM_VAR_THIZ;
    return [thiz isGyroActive];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CMMotionManager_isGyroAvailable__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMMotionManager_isGyroAvailable__]
    XMLVM_VAR_THIZ;
    return [thiz isGyroAvailable];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CMMotionManager_gyroData__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMMotionManager_gyroData__]
    XMLVM_VAR_THIZ;
    return xmlvm_get_associated_c_object([thiz gyroData]);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CMMotionManager_startGyroUpdatesToQueue___org_xmlvm_iphone_NSOperationQueue_org_xmlvm_iphone_CMGyroHandler(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMMotionManager_startGyroUpdatesToQueue___org_xmlvm_iphone_NSOperationQueue_org_xmlvm_iphone_CMGyroHandler]
      
   	XMLVM_VAR_THIZ;
	NSOperationQueue* queue = ((org_xmlvm_iphone_NSOperationQueue*)n1)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;  
	[thiz startGyroUpdatesToQueue:queue withHandler:^(CMGyroData *gyroData, NSError *error) {
	
		org_xmlvm_iphone_CMGyroData* data = __NEW_org_xmlvm_iphone_CMGyroData();	
		org_xmlvm_iphone_CMRotationRate* rate = __NEW_org_xmlvm_iphone_CMRotationRate();
			
		org_xmlvm_iphone_CMRotationRate___INIT____double_double_double(rate, 
																	   [gyroData rotationRate].x, 
																	   [gyroData rotationRate].y,
																	   [gyroData rotationRate].z);
		org_xmlvm_iphone_CMGyroData___INIT____org_xmlvm_iphone_CMRotationRate(data, rate);
	
     	Func_VOOO toCall = *(((java_lang_Object*)n2)->tib->itableBegin) [XMLVM_ITABLE_IDX_org_xmlvm_iphone_CMGyroHandler_run___org_xmlvm_iphone_CMGyroData_org_xmlvm_iphone_NSError];
     	toCall (n2, data, xmlvm_get_associated_c_object(error));
    }];
        
    //XMLVM_END_WRAPPER
}

