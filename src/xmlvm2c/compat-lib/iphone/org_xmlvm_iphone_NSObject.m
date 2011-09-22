#include "xmlvm.h"
#include "org_xmlvm_iphone_NSSelector.h"

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

#import <objc/runtime.h>
#include "xmlvm-util.h"
#include "java_lang_Class.h"
#include "java_lang_reflect_Method.h"
#include "org_xmlvm_iphone_NSString.h"


#define MAX_WRAPPER_CREATOR_FUNCS 20

static int numWrapperCreatorFuncs = 0;

static Func_ONSObject wrapperCreatorFunctions[MAX_WRAPPER_CREATOR_FUNCS];

void xmlvm_register_wrapper_creator(Func_ONSObject fn)
{
    if (numWrapperCreatorFuncs == MAX_WRAPPER_CREATOR_FUNCS) {
        XMLVM_INTERNAL_ERROR();
    }
    wrapperCreatorFunctions[numWrapperCreatorFuncs++] = fn;
}

/*
 * The purpose of this function is to create a C object of matching type from
 * a given Objective-C object. E.g., If 'obj' is of type UIViewController, this
 * function returns an instance of org_xmlvm_iphone_UIViewController that wraps
 * 'obj'. Since we don't want compile-time dependencies to all possible sub-classes
 * of NSObject, this function iterates over a list of registered 'wrapper creators'.
 * Each class can register such a wrapper creator with the help of function
 * xmlvm_register_wrapper_creator() (see above).
 */
static JAVA_OBJECT xmlvm_create_wrapping_c_object(NSObject* obj)
{

    int i = 0;
    for (i = 0; i < numWrapperCreatorFuncs; i++) {
        JAVA_OBJECT jobj = (*wrapperCreatorFunctions[i])(obj);
        if (jobj != JAVA_NULL) {
            return jobj;
        }
    }
    /*
     * If we get here, it means no wrapper creator has been registered
     * for a given sub-class of NSObject.
     */
    XMLVM_INTERNAL_ERROR();
    return JAVA_NULL;
}

/*
 * Class NSObject_members is used to associate additional state to
 * NSObject instances. In particular, we keep a reference to the
 * wrapping C object. This makes it possible to retrieve the associated
 * C object from a given Objective-C object.
 */
@interface NSObject_members : NSObject {
@public org_xmlvm_iphone_NSObject* wrappingCObj;
}
- (id) initWithWrappingCObj:(JAVA_OBJECT) obj;
@end

@implementation NSObject_members

- (id) initWithWrappingCObj:(JAVA_OBJECT) obj
{
    self = [super init];
    self->wrappingCObj = obj;
    return self;
}

@end


@interface NSObject (cat_org_xmlvm_iphone_NSObject)
- (void) setWrappingCObject:(JAVA_OBJECT) obj;
- (NSObject_members*) getExtraMembers;
- (NSObject_members*) getExtraMembersIfPresent;
- (void) removeExtraMembers;
@end


@implementation NSObject (cat_org_xmlvm_iphone_NSObject)

static char memberKey; // key for associative reference for member variables

- (void) setWrappingCObject:(JAVA_OBJECT) obj
{
    NSObject_members* members = (NSObject_members*) objc_getAssociatedObject(self, &memberKey);
    if (members != nil) {
        // Shouldn't occur
        XMLVM_INTERNAL_ERROR();
    }
    members = [[NSObject_members alloc] initWithWrappingCObj:obj];
    objc_setAssociatedObject(self, &memberKey, members, OBJC_ASSOCIATION_RETAIN);
    [members release];
}

- (NSObject_members*) getExtraMembers
{
    NSObject_members* members = nil;
    @synchronized(self) {
        members = (NSObject_members*) objc_getAssociatedObject(self, &memberKey);
        if (members == nil) {
            JAVA_OBJECT jobj = xmlvm_create_wrapping_c_object(self);
            members = [[NSObject_members alloc] initWithWrappingCObj:jobj];
            objc_setAssociatedObject(self, &memberKey, members, OBJC_ASSOCIATION_RETAIN);
            [members release];
        }
    }
    return members;
}

- (NSObject_members*) getExtraMembersIfPresent
{
    return (NSObject_members*) objc_getAssociatedObject(self, &memberKey);
}

- (void) removeExtraMembers
{
    objc_setAssociatedObject(self, &memberKey, nil, OBJC_ASSOCIATION_RETAIN);
}

@end


void xmlvm_set_associated_c_object(JAVA_OBJECT jobj, NSObject* obj)
{
    [obj setWrappingCObject:jobj];
}

JAVA_OBJECT xmlvm_get_associated_c_object_if_present(NSObject* obj)
{
    if (obj == nil) {
        return JAVA_NULL;
    }
    NSObject_members* extraMembers = [obj getExtraMembersIfPresent];
    return (extraMembers == nil) ? JAVA_NULL : extraMembers->wrappingCObj;
}

JAVA_OBJECT xmlvm_get_associated_c_object(NSObject* obj)
{
    if (obj == nil) {
        return JAVA_NULL;
    }
    return [obj getExtraMembers]->wrappingCObj;
}

static JAVA_OBJECT org_xmlvm_iphone_NSObject_handlers;


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
    JAVA_OBJECT param;
}

- (id) initWithParams:(JAVA_OBJECT) target_
                     :(JAVA_OBJECT) param_;

- (void) run;
@end

@implementation DispatcherObject

- (id) initWithParams:(JAVA_OBJECT) target_
                     :(JAVA_OBJECT) param_
{
    [super init];
    self->target = target_;
    self->param = param_;
    return self;
}

- (void) run
{
    (*(void (*)(JAVA_OBJECT, JAVA_OBJECT)) *(((java_lang_Object*) target)->tib->itableBegin)[XMLVM_ITABLE_IDX_org_xmlvm_iphone_NSSelector_invokeWithArgument___java_lang_Object])(target, param);

    // Remove target reference from handler list
    XMLVMUtil_ArrayList_remove(org_xmlvm_iphone_NSObject_handlers, target);
    [self release];
}

@end


void org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    java_lang_Object___INIT___(me);
    org_xmlvm_iphone_NSObject* thiz = (org_xmlvm_iphone_NSObject*) me;
    thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = wrappedObjCObj;
    xmlvm_set_associated_c_object(me, wrappedObjCObj);
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
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
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
    {"retain",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"release",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dealloc",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSObject_retain__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_NSObject_release__(receiver);
        break;
    case 4:
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
    __TIB_org_xmlvm_iphone_NSObject.vtable[2] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_finalize_org_xmlvm_iphone_NSObject__;
    __TIB_org_xmlvm_iphone_NSObject.vtable[6] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_release__;
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
    org_xmlvm_iphone_NSObject_handlers = XMLVMUtil_NEW_ArrayList();
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSObject.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSObject(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER
    // Call the finalizer
    (*(void (*)(JAVA_OBJECT)) ((java_lang_Object*) me)->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__])(me);
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 1 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject]
    ((org_xmlvm_iphone_NSObject*) me)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = nil;
    //XMLVM_END_WRAPPER
    if (!derivedClassWillRegisterFinalizer) {
        // Tell the GC to finalize us
        XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSObject);
    }
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject()
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    org_xmlvm_iphone_NSObject* me = (org_xmlvm_iphone_NSObject*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSObject));
    me->tib = &__TIB_org_xmlvm_iphone_NSObject;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0);
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
    XMLVMUtil_ArrayList_add(org_xmlvm_iphone_NSObject_handlers, n1);
    DispatcherObject* dispatcher = [[DispatcherObject alloc] initWithParams:n1:n2];
    [dispatcher performSelector:@selector(run) withObject:nil afterDelay:n3];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___org_xmlvm_iphone_NSSelector_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_performSelectorOnMainThread___org_xmlvm_iphone_NSSelector_java_lang_Object_boolean]
    XMLVMUtil_ArrayList_add(org_xmlvm_iphone_NSObject_handlers, n1);
    DispatcherObject* dispatcher = [[DispatcherObject alloc] initWithParams:n1:n2];
    [dispatcher performSelectorOnMainThread:@selector(run) withObject:nil waitUntilDone:n3];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_finalize_org_xmlvm_iphone_NSObject__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_finalize_org_xmlvm_iphone_NSObject__]
    XMLVM_VAR_THIZ;
    [thiz removeExtraMembers];
    [thiz release];
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

