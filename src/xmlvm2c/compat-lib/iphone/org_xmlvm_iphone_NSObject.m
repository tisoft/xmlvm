#include "xmlvm.h"
#include "org_xmlvm_iphone_NSSelector.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSObject.h"

#define XMLVM_CURRENT_CLASS_NAME NSObject
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSObject

__TIB_DEFINITION_org_xmlvm_iphone_NSObject __TIB_org_xmlvm_iphone_NSObject = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSObject, // classInitializer
    "org.xmlvm.iphone.NSObject", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSObject), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "java_lang_Class.h"
#include "java_lang_reflect_Method.h"
#import  "org_xmlvm_iphone_NSString.h"

@implementation DelegateWrapper

- (id) init
{
    [super init];
    sources = nil;
    source = nil;
    source_ = nil;
    return self;
}

- (void) dealloc
{
    [sources release];
    [super dealloc];
}

- (void) addSource: (JAVA_OBJECT) src_ : (NSObject*) src
{
    if (source == nil) {
        source = src;
        source_ = src_;
    }
    else {
        if (sources == nil) {
            sources = [[NSMutableDictionary alloc] init];
            NSValue* key = [[NSValue alloc] initWithBytes: &source objCType: @encode(NSObject*)];
            NSValue* value = [[NSValue alloc] initWithBytes: &source_ objCType: @encode(JAVA_OBJECT)];
            [sources setObject: value forKey: key];
            [key release];
        }
        
        NSValue* key = [[NSValue alloc] initWithBytes: &src objCType: @encode(NSObject*)];
        NSValue* value = [[NSValue alloc] initWithBytes: &src_ objCType: @encode(JAVA_OBJECT)];
        [sources setObject: value forKey: key];
        [key release];
    }
}

- (JAVA_OBJECT) getSource: (NSObject*) src
{
    if (sources == nil) {
        return source_;
    }
    
    NSValue* key = [[NSValue alloc] initWithBytes: &src objCType: @encode(NSObject*)];
    NSValue* value = [sources objectForKey: key];
    JAVA_OBJECT src_ = [value pointerValue];
    [key release];
    return src_;
}

@end


static NSObject* dispatchObject = nil;

@interface DispatcherObject : NSObject {
    JAVA_OBJECT target;
    JAVA_OBJECT methodName;
    JAVA_OBJECT param;
}

- (id) initWithParams:(JAVA_OBJECT) target_
                     :(JAVA_OBJECT) methodName_
                     :(JAVA_OBJECT) param_;

- (void) run;
@end

@implementation DispatcherObject

- (id) initWithParams:(JAVA_OBJECT) target_
                     :(JAVA_OBJECT) methodName_
                     :(JAVA_OBJECT) param_
{
    [super init];
    self->target = target_;
    self->methodName = methodName_;
    self->param = param_;
    return self;
}

- (void) run
{
    // We use the standard Java reflection API to invoke a method that
    // takes a single java.lang.Object parameter
    if (!__TIB_java_lang_Class.classInitialized) __INIT_java_lang_Class();
    // First build up array with one __CLASS_java_lang_Object. We save this since
    // we can reuse it
    static org_xmlvm_runtime_XMLVMArray* paramTypes = JAVA_NULL;
    if (paramTypes == JAVA_NULL) {
        paramTypes = XMLVMArray_createSingleDimension(__CLASS_java_lang_Class, 1);
        ((JAVA_ARRAY_OBJECT*) (paramTypes->fields.org_xmlvm_runtime_XMLVMArray.array_))[0] = __CLASS_java_lang_Object;
    }
    java_lang_Class* targetClass = java_lang_Object_getClass__(target);
    // Retrieve method
    java_lang_reflect_Method* method = (*(JAVA_OBJECT (*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT)) targetClass->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Class_getMethod___java_lang_String_java_lang_Class_1ARRAY])(targetClass, methodName, paramTypes);
    org_xmlvm_runtime_XMLVMArray* params = XMLVMArray_createSingleDimension(__CLASS_java_lang_Object, 1);
    ((JAVA_ARRAY_OBJECT*) (params->fields.org_xmlvm_runtime_XMLVMArray.array_))[0] = param;
    // Invoke method
    (*(JAVA_OBJECT (*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT)) method->tib->vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_invoke___java_lang_Object_java_lang_Object_1ARRAY])(method, target, params);
    [self release];
}

@end


void org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    java_lang_Object___INIT___(me);
    org_xmlvm_iphone_NSObject* thiz = (org_xmlvm_iphone_NSObject*) me;
    thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = wrappedObjCObj;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSObject();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSObject___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSSelector,
    &__CLASS_java_lang_Object,
    &__CLASS_double,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSSelector,
    &__CLASS_java_lang_Object,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_Object,
    &__CLASS_double,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_Object,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"performSelector",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"performSelectorOnMainThread",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"performSelector",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"performSelectorOnMainThread",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"retain",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"release",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dealloc",
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
        org_xmlvm_iphone_NSObject_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_double(argsArray[0], argsArray[1], ((java_lang_Double*) argsArray[2])->fields.java_lang_Double.value_);
        break;
    case 1:
        org_xmlvm_iphone_NSObject_performSelectorOnMainThread___org_xmlvm_iphone_NSSelector_java_lang_Object_boolean(argsArray[0], argsArray[1], ((java_lang_Boolean*) argsArray[2])->fields.java_lang_Boolean.value_);
        break;
    case 2:
        org_xmlvm_iphone_NSObject_performSelector___java_lang_Object_java_lang_String_java_lang_Object_double(argsArray[0], argsArray[1], argsArray[2], ((java_lang_Double*) argsArray[3])->fields.java_lang_Double.value_);
        break;
    case 3:
        org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean(argsArray[0], argsArray[1], argsArray[2], ((java_lang_Boolean*) argsArray[3])->fields.java_lang_Boolean.value_);
        break;
    case 4:
        org_xmlvm_iphone_NSObject_retain__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_NSObject_release__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_NSObject_dealloc__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSObject()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSObject);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSObject.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSObject.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSObject);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSObject.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSObject.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSObject();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSObject()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSObject.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSObject;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSObject.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSObject.vtable[6] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_retain__;
    __TIB_org_xmlvm_iphone_NSObject.vtable[7] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_release__;
    __TIB_org_xmlvm_iphone_NSObject.vtable[8] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_dealloc__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSObject.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSObject.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSObject.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSObject.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSObject.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSObject.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSObject.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSObject.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSObject.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSObject.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSObject = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSObject);
    __TIB_org_xmlvm_iphone_NSObject.clazz = __CLASS_org_xmlvm_iphone_NSObject;
    __TIB_org_xmlvm_iphone_NSObject.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSObject_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSObject);
    __CLASS_org_xmlvm_iphone_NSObject_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSObject_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSObject_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSObject_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSObject.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSObject(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSObject]
    /*
     * We implement the destructor of NSObject, but in NSObject itself
     * we do not register a finalizer with the GC. Each subclass decides
     * if it wants to register a finalizer in which case this __DELETE_
     * function would be called. E.g., UIButton will register a finalizer
     * because it needs to dispose the UIButton, but CGRect will not
     * register a finalizer because it is a value type and not an Objective-C
     * object that needs to be wrapped.
     */
    XMLVM_VAR_THIZ;
	[thiz release];
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject()
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    org_xmlvm_iphone_NSObject* me = (org_xmlvm_iphone_NSObject*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSObject));
    me->tib = &__TIB_org_xmlvm_iphone_NSObject;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSObject()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSObject();
    org_xmlvm_iphone_NSObject___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSObject___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject___INIT___]
    java_lang_Object___INIT___(me);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_double(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_DOUBLE n3)
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_double]
    DispatcherObject* dispatcher = [[DispatcherObject alloc] initWithParams:n1:toJavaString(@"invokeWithArgument"):n2];
    [dispatcher performSelector:@selector(run) withObject:nil afterDelay:n3];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___org_xmlvm_iphone_NSSelector_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_performSelectorOnMainThread___org_xmlvm_iphone_NSSelector_java_lang_Object_boolean]
    DispatcherObject* dispatcher = [[DispatcherObject alloc] initWithParams:n1:toJavaString(@"invokeWithArgument"):n2];
    [dispatcher performSelectorOnMainThread:@selector(run) withObject:nil waitUntilDone:n3];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_performSelector___java_lang_Object_java_lang_String_java_lang_Object_double(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_DOUBLE n4)
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_performSelector___java_lang_Object_java_lang_String_java_lang_Object_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4)
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean]
    DispatcherObject* dispatcher = [[DispatcherObject alloc] initWithParams:n1:n2:n3];
    [dispatcher performSelectorOnMainThread:@selector(run) withObject:nil waitUntilDone:n4];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSObject_retain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_retain__]
    // Do nothing
    return me;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_release__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_release__]
    // Do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_dealloc__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_dealloc__]
    // Do nothing
    //XMLVM_END_WRAPPER
}

