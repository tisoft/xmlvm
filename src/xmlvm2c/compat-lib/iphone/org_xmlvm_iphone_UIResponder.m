#include "xmlvm.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "org_xmlvm_iphone_UITouch.h"

#include "org_xmlvm_iphone_UIResponder.h"

#define XMLVM_CURRENT_CLASS_NAME UIResponder
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIResponder

__TIB_DEFINITION_org_xmlvm_iphone_UIResponder __TIB_org_xmlvm_iphone_UIResponder = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIResponder, // classInitializer
    "org.xmlvm.iphone.UIResponder", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIResponder), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <objc/runtime.h>
#include "java_util_HashSet.h"
#include "org_xmlvm_iphone_UITouch.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "xmlvm-util.h"


/*
 * Convert an NSSet of UITouch objects to a HashSet
 */
static JAVA_OBJECT convertTouchesSet(NSSet* set)
{
    JAVA_OBJECT hashSet = XMLVMUtil_NEW_HashSet();
    NSEnumerator* enumerator = [set objectEnumerator];
	id obj = nil;
    if (!__TIB_org_xmlvm_iphone_UITouch.classInitialized) __INIT_org_xmlvm_iphone_UITouch();
	while ((obj = [enumerator nextObject]) != nil) {
        JAVA_OBJECT* touch = xmlvm_get_associated_c_object(obj);
        XMLVMUtil_HashSet_add(hashSet, touch);

	}
	return hashSet;
}

/*
 * Convert a UIEvent to its C counterpart
 */
static JAVA_OBJECT convertEvent(UIEvent* event)
{
    if (!__TIB_org_xmlvm_iphone_UIEvent.classInitialized) __INIT_org_xmlvm_iphone_UIEvent();
    return xmlvm_get_associated_c_object(event);
}


@implementation UIResponder (cat_org_xmlvm_iphone_UIResponder)

- (void) touchesBegan:(NSSet*) touches withEvent:(UIEvent*) event
{
    org_xmlvm_iphone_UIResponder* thiz = xmlvm_get_associated_c_object_if_present(self);
    if (thiz == JAVA_NULL) {
        // We don't handle this object on the Java-side
        [[self nextResponder] touchesBegan:touches withEvent:event];
        return;
    }
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent
    VTABLE_PTR func = thiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent];
    if (func == (VTABLE_PTR) org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent) {
        // vtable index for this method still points to the implementation of
        // class UIResponder. Delegate event to the next responder
		[[self nextResponder] touchesBegan:touches withEvent:event];
    } else {
        JAVA_OBJECT touchesObj = convertTouchesSet(touches);
        JAVA_OBJECT eventObj = convertEvent(event);
        (*(void (*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT)) func)(thiz, touchesObj, eventObj);
    }
#else
    [[self nextResponder] touchesBegan:touches withEvent:event];
#endif
}

- (void) touchesCancelled:(NSSet*) touches withEvent:(UIEvent*) event
{
    org_xmlvm_iphone_UIResponder* thiz = xmlvm_get_associated_c_object_if_present(self);
    if (thiz == JAVA_NULL) {
        // We don't handle this object on the Java-side
        [[self nextResponder] touchesCancelled:touches withEvent:event];
        return;
    }
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent
    VTABLE_PTR func = thiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent];
    if (func == (VTABLE_PTR) org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent) {
        // vtable index for this method still points to the implementation of
        // class UIResponder. Delegate event to the next responder
		[[self nextResponder] touchesCancelled:touches withEvent:event];
    } else {
        JAVA_OBJECT touchesObj = convertTouchesSet(touches);
        JAVA_OBJECT eventObj = convertEvent(event);
        (*(void (*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT)) func)(thiz, touchesObj, eventObj);
    }
#else
    [[self nextResponder] touchesCancelled:touches withEvent:event];
#endif    
}

- (void) touchesEnded:(NSSet*) touches withEvent:(UIEvent*) event
{
    org_xmlvm_iphone_UIResponder* thiz = xmlvm_get_associated_c_object_if_present(self);
    if (thiz == JAVA_NULL) {
        // We don't handle this object on the Java-side
        [[self nextResponder] touchesEnded:touches withEvent:event];
        return;
    }
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent
    VTABLE_PTR func = thiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent];
    if (func == (VTABLE_PTR) org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent) {
        // vtable index for this method still points to the implementation of
        // class UIResponder. Delegate event to the next responder
		[[self nextResponder] touchesEnded:touches withEvent:event];
    } else {
        JAVA_OBJECT touchesObj = convertTouchesSet(touches);
        JAVA_OBJECT eventObj = convertEvent(event);
        (*(void (*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT)) func)(thiz, touchesObj, eventObj);
    }
#else
    [[self nextResponder] touchesEnded:touches withEvent:event];
#endif
}

- (void) touchesMoved:(NSSet*) touches withEvent:(UIEvent*) event
{
    org_xmlvm_iphone_UIResponder* thiz = xmlvm_get_associated_c_object_if_present(self);
    if (thiz == JAVA_NULL) {
        // We don't handle this object on the Java-side
        [[self nextResponder] touchesMoved:touches withEvent:event];
        return;
    }
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent
    VTABLE_PTR func = thiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent];
    if (func == (VTABLE_PTR) org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent) {
        // vtable index for this method still points to the implementation of
        // class UIResponder. Delegate event to the next responder
		[[self nextResponder] touchesMoved:touches withEvent:event];
    } else {
        JAVA_OBJECT touchesObj = convertTouchesSet(touches);
        JAVA_OBJECT eventObj = convertEvent(event);
        (*(void (*)(JAVA_OBJECT, JAVA_OBJECT, JAVA_OBJECT)) func)(thiz, touchesObj, eventObj);
    }
#else
    [[self nextResponder] touchesMoved:touches withEvent:event];
#endif
}

@end

void org_xmlvm_iphone_UIResponder_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [UIResponder class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_UIResponder();
        org_xmlvm_iphone_UIResponder_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"callDelegates",
    &__CLASS_boolean,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIResponder, fields.org_xmlvm_iphone_UIResponder.callDelegates_),
    0,
    "",
    JAVA_NULL},
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIResponder();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIResponder___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"touchesBegan",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesCancelled",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesEnded",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesMoved",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getNextResponder",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"resignFirstResponder",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"becomeFirstResponder",
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
        org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 4:
        org_xmlvm_iphone_UIResponder_getNextResponder__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UIResponder_resignFirstResponder__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_UIResponder_becomeFirstResponder__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIResponder()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIResponder);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIResponder.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIResponder.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIResponder);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIResponder.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIResponder.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIResponder.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIResponder();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIResponder()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIResponder.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIResponder;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIResponder.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIResponder.vtable[7] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIResponder.vtable[8] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIResponder.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIResponder.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIResponder.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIResponder.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIResponder.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIResponder.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIResponder.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIResponder.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIResponder.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIResponder.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIResponder = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIResponder);
    __TIB_org_xmlvm_iphone_UIResponder.clazz = __CLASS_org_xmlvm_iphone_UIResponder;
    __TIB_org_xmlvm_iphone_UIResponder.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIResponder_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIResponder);
    __CLASS_org_xmlvm_iphone_UIResponder_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIResponder_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIResponder_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIResponder_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIResponder]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIResponder.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIResponder(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIResponder]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_UIResponder*) me)->fields.org_xmlvm_iphone_UIResponder.callDelegates_ = 0;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIResponder()
{
    if (!__TIB_org_xmlvm_iphone_UIResponder.classInitialized) __INIT_org_xmlvm_iphone_UIResponder();
    org_xmlvm_iphone_UIResponder* me = (org_xmlvm_iphone_UIResponder*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIResponder));
    me->tib = &__TIB_org_xmlvm_iphone_UIResponder;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIResponder]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIResponder()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIResponder();
    org_xmlvm_iphone_UIResponder___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIResponder___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder___INIT___]
    org_xmlvm_iphone_NSObject___INIT___(me);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIResponder_getNextResponder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_getNextResponder__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIResponder_resignFirstResponder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_resignFirstResponder__]
    org_xmlvm_iphone_UIResponder* thiz = me;
    return [((UIResponder*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) resignFirstResponder];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIResponder_becomeFirstResponder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_becomeFirstResponder__]
    XMLVM_VAR_IOS(UIResponder, responder, me);
    [responder becomeFirstResponder];
    //XMLVM_END_WRAPPER
}

