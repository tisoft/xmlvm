#include "xmlvm.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "java_util_Set.h"

#include "org_xmlvm_iphone_UIResponder.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIResponder __TIB_org_xmlvm_iphone_UIResponder = {
    0, // classInitialized
    "org.xmlvm.iphone.UIResponder", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIResponder.h>
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
	while ((obj = [enumerator nextObject]) != nil) {
        org_xmlvm_iphone_UITouch* touch = __NEW_org_xmlvm_iphone_UITouch();
        org_xmlvm_iphone_UITouch_INTERNAL_CONSTRUCTOR(touch, (UITouch*) obj);
        XMLVMUtil_HashSet_add(hashSet, touch);

	}
	return hashSet;
}

/*
 * Convert a UIEvent to its C counterpart
 */
static JAVA_OBJECT convertEvent(UIEvent* event)
{
    JAVA_OBJECT eventObj = __NEW_org_xmlvm_iphone_UIEvent();
    org_xmlvm_iphone_UIEvent_INTERNAL_CONSTRUCTOR(eventObj, event);
    return eventObj;
}


/*
 * Class UIResponder_members is used to associate additional state to
 * UIResponder instances. In particular, we keep a reference to the
 * wrapping C object. This makes it possible to access the C object
 * from within the Objective-C category cat_org_xmlvm_iphone_UIResponder.
 */
@interface UIResponder_members : NSObject {
@public org_xmlvm_iphone_UIResponder* responder;
}

- (id) init;

@end

@implementation UIResponder_members

- (id) init
{
    self = [super init];
    self->responder = JAVA_NULL;
    return self;
}

@end


@interface UIResponder (cat_org_xmlvm_iphone_UIResponder)
@end

@implementation UIResponder (cat_org_xmlvm_iphone_UIResponder)

static char memberKey; // key for associative reference for member variables

- (UIResponder_members*) getResponderMembers
{
    UIResponder_members* members = nil;
    @synchronized(self) {
        members = (UIResponder_members*) objc_getAssociatedObject(self, &memberKey);
        if (members == nil) {
            members = [[UIResponder_members alloc] init];
            objc_setAssociatedObject(self, &memberKey, members, OBJC_ASSOCIATION_RETAIN);
            [members release];
        }
    }
    return members;
}

- (void) touchesBegan:(NSSet*) touches withEvent:(UIEvent*) event
{
    UIResponder_members* members = [self getResponderMembers];
    org_xmlvm_iphone_UIResponder* thiz = members->responder;
    if (thiz == JAVA_NULL) {
        // We don't handle this object on the Java-side
        [[self nextResponder] touchesBegan:touches withEvent:event];
        return;
    }
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
}

- (void) touchesCancelled:(NSSet*) touches withEvent:(UIEvent*) event
{
    UIResponder_members* members = [self getResponderMembers];
    org_xmlvm_iphone_UIResponder* thiz = members->responder;
    if (thiz == JAVA_NULL) {
        // We don't handle this object on the Java-side
        [[self nextResponder] touchesCancelled:touches withEvent:event];
        return;
    }
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
}

- (void) touchesEnded:(NSSet*) touches withEvent:(UIEvent*) event
{
    UIResponder_members* members = [self getResponderMembers];
    org_xmlvm_iphone_UIResponder* thiz = members->responder;
    if (thiz == JAVA_NULL) {
        // We don't handle this object on the Java-side
        [[self nextResponder] touchesEnded:touches withEvent:event];
        return;
    }
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
}

- (void) touchesMoved:(NSSet*) touches withEvent:(UIEvent*) event
{
    UIResponder_members* members = [self getResponderMembers];
    org_xmlvm_iphone_UIResponder* thiz = members->responder;
    if (thiz == JAVA_NULL) {
        // We don't handle this object on the Java-side
        [[self nextResponder] touchesMoved:touches withEvent:event];
        return;
    }
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
}

@end

void org_xmlvm_iphone_UIResponder_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
    UIResponder_members* members = [wrappedObjCObj getResponderMembers];
    members->responder = me;
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

void __INIT_org_xmlvm_iphone_UIResponder()
{
    __TIB_org_xmlvm_iphone_UIResponder.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIResponder.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIResponder;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIResponder.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIResponder.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIResponder.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIResponder.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIResponder.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIResponder.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_getNextResponder__;
    __TIB_org_xmlvm_iphone_UIResponder.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_resignFirstResponder__;
    __TIB_org_xmlvm_iphone_UIResponder.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UIResponder_becomeFirstResponder__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIResponder.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIResponder.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIResponder.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIResponder.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIResponder.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIResponder.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIResponder.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIResponder = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIResponder);
    __TIB_org_xmlvm_iphone_UIResponder.clazz = __CLASS_org_xmlvm_iphone_UIResponder;
    __CLASS_org_xmlvm_iphone_UIResponder_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIResponder, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIResponder]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIResponder(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIResponder]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIResponder()
{
    if (!__TIB_org_xmlvm_iphone_UIResponder.classInitialized) __INIT_org_xmlvm_iphone_UIResponder();
    org_xmlvm_iphone_UIResponder* me = (org_xmlvm_iphone_UIResponder*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIResponder));
    me->tib = &__TIB_org_xmlvm_iphone_UIResponder;
    me->fields.org_xmlvm_iphone_UIResponder.callDelegates_ = 0;
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
    XMLVM_NOT_IMPLEMENTED();
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
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIResponder_becomeFirstResponder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIResponder_becomeFirstResponder__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

