#include "xmlvm.h"
#include "java_util_Map.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIControlDelegate.h"
#include "org_xmlvm_iphone_UIEvent.h"

#include "org_xmlvm_iphone_UIControl.h"

#define XMLVM_CURRENT_CLASS_NAME UIControl
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIControl

__TIB_DEFINITION_org_xmlvm_iphone_UIControl __TIB_org_xmlvm_iphone_UIControl = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIControl, // classInitializer
    "org.xmlvm.iphone.UIControl", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIControl), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIControl.h>
#include "xmlvm-util.h"
#include "java_util_HashSet.h"
#include "java_util_HashMap.h"


@interface UIControlDelegateWrapper : NSObject {
    
    @public JAVA_OBJECT delegate;
    @public JAVA_OBJECT control;
}

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
                       :(JAVA_OBJECT) control_;
- (void) raiseEvent:(UIControl*) control :(int)event;
@end


@implementation UIControlDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
                       :(JAVA_OBJECT) control_
{
    [super init];
    self->delegate = delegate_;
    self->control = control_;
    return self;
}


- (void) raiseEvent:(UIControl*) control :(int)event;
{
    Func_VOOI toCall = *(((java_lang_Object*)self->delegate)->tib->itableBegin)[XMLVM_ITABLE_IDX_org_xmlvm_iphone_UIControlDelegate_raiseEvent___org_xmlvm_iphone_UIControl_int];
	toCall(self->delegate, self->control, event);
}

@end

void org_xmlvm_iphone_UIControl_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"delegateMap",
    &__CLASS_java_util_Map,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIControl, fields.org_xmlvm_iphone_UIControl.delegateMap_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIControl();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIControl___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UIControl___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIControlDelegate,
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"addTarget",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIControlDelegate;I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getAllTargets",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/Set;",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesEnded",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Set;Lorg/xmlvm/iphone/UIEvent;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isEnabled",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setEnabled",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isSelected",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelected",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isHighlighted",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setHighlighted",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getState",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"getContentHorizontalAlignment",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setContentHorizontalAlignment",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getContentVerticalAlignment",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setContentVerticalAlignment",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"raiseEvent",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIControl_getAllTargets__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIControl_isEnabled__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 4:
        org_xmlvm_iphone_UIControl_setEnabled___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 5:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIControl_isSelected__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 6:
        org_xmlvm_iphone_UIControl_setSelected___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 7:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIControl_isHighlighted__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 8:
        org_xmlvm_iphone_UIControl_setHighlighted___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 9:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIControl_getState__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 10:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIControl_getContentHorizontalAlignment__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 11:
        org_xmlvm_iphone_UIControl_setContentHorizontalAlignment___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 12:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIControl_getContentVerticalAlignment__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 13:
        org_xmlvm_iphone_UIControl_setContentVerticalAlignment___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 14:
        org_xmlvm_iphone_UIControl_raiseEvent___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIControl()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIControl);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIControl.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIControl.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIControl);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIControl.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIControl.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIControl")
        __INIT_IMPL_org_xmlvm_iphone_UIControl();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIControl()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIView)
    __TIB_org_xmlvm_iphone_UIControl.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControl;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIControl.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIControl.vtable[8] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIControl.vtable[2] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_finalize_org_xmlvm_iphone_UIControl__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIControl.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIControl.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIControl.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControl.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIControl.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIControl.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControl.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIControl.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIControl.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControl.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIControl = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIControl);
    __TIB_org_xmlvm_iphone_UIControl.clazz = __CLASS_org_xmlvm_iphone_UIControl;
    __TIB_org_xmlvm_iphone_UIControl.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIControl_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControl);
    __CLASS_org_xmlvm_iphone_UIControl_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControl_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIControl_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControl_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIControl.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIControl(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER
    // Call the finalizer
    (*(void (*)(JAVA_OBJECT)) ((java_lang_Object*) me)->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__])(me);
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me, 1 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_UIControl*) me)->fields.org_xmlvm_iphone_UIControl.delegateMap_ = (java_util_Map*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl]
    XMLVM_VAR_THIZ;

    JAVA_OBJECT map = __NEW_java_util_HashMap();
    java_util_HashMap___INIT___(map);
    jthiz->fields.org_xmlvm_iphone_UIControl.delegateMap_ = (java_util_Map*) map;

    jthiz->fields.org_xmlvm_iphone_UIControl.delegateWrappers = [[NSMutableSet alloc] init];
    //XMLVM_END_WRAPPER
    if (!derivedClassWillRegisterFinalizer) {
        // Tell the GC to finalize us
        XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIControl);
    }
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControl()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControl)
org_xmlvm_iphone_UIControl* me = (org_xmlvm_iphone_UIControl*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControl));
    me->tib = &__TIB_org_xmlvm_iphone_UIControl;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControl()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIControl();
    org_xmlvm_iphone_UIControl___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIControl___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int]
    XMLVM_VAR_THIZ;

    JAVA_OBJECT uiControlEvent = __NEW_java_lang_Integer();
    java_lang_Integer___INIT____int(uiControlEvent, n2);

    java_util_HashMap* delegateMap = jthiz->fields.org_xmlvm_iphone_UIControl.delegateMap_;
    JAVA_OBJECT delegateSet = java_util_HashMap_get___java_lang_Object(delegateMap, uiControlEvent);
    if (delegateSet == JAVA_NULL) {
        delegateSet = __NEW_java_util_HashSet();
        java_util_HashSet___INIT___(delegateSet);
        java_util_HashMap_put___java_lang_Object_java_lang_Object(delegateMap, uiControlEvent, delegateSet);
    }
    java_util_HashSet_add___java_lang_Object(delegateSet, n1);

    UIControlDelegateWrapper* delegateWrapper = [[UIControlDelegateWrapper alloc] initWithDelegate:n1 :me];
    [jthiz->fields.org_xmlvm_iphone_UIControl.delegateWrappers addObject:delegateWrapper];

    // The delegateWrapper retainCount was increased when added to the NSMutableSet.
    // Releasing here means we don't have to do one on each member of the NSMutableSet when it is released.
    [delegateWrapper release];

    [thiz addTarget:delegateWrapper action:@selector(raiseEvent::) forControlEvents:n2];

    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIControl_getAllTargets__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_getAllTargets__]
    XMLVM_VAR_THIZ;
    NSSet* targets = [thiz allTargets];
    JAVA_OBJECT hashSet = XMLVMUtil_NEW_HashSet();
    NSEnumerator* enumerator = [targets objectEnumerator];
    id obj = nil;
    while ((obj = [enumerator nextObject]) != nil) {
        org_xmlvm_iphone_UIControlDelegate* delegate = ((UIControlDelegateWrapper*) obj)->delegate;
        XMLVMUtil_HashSet_add(hashSet, delegate);
    }
    return hashSet;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIControl_isEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_isEnabled__]
    XMLVM_VAR_THIZ;
    return [thiz isEnabled];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_setEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_setEnabled___boolean]
    XMLVM_VAR_THIZ;
    [thiz setEnabled:n1];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIControl_isSelected__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_isSelected__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_setSelected___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_setSelected___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIControl_isHighlighted__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_isHighlighted__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_setHighlighted___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_setHighlighted___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIControl_getState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_getState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIControl_getContentHorizontalAlignment__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_getContentHorizontalAlignment__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_setContentHorizontalAlignment___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_setContentHorizontalAlignment___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIControl_getContentVerticalAlignment__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_getContentVerticalAlignment__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_setContentVerticalAlignment___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_setContentVerticalAlignment___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_raiseEvent___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_raiseEvent___int]

    // do nothing - this method is only used in Java for code centralization
    XMLVM_NOT_IMPLEMENTED();

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_finalize_org_xmlvm_iphone_UIControl__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_finalize_org_xmlvm_iphone_UIControl__]
    XMLVM_VAR_THIZ;

    // release the NSSet of UIControlDelegateWrapper
    [jthiz->fields.org_xmlvm_iphone_UIControl.delegateWrappers release];

    // super.finalize() - the direct superclass may not have a finalize(), so
    // we look up the tree until we find one, if any.
    org_xmlvm_iphone_NSObject_finalize_org_xmlvm_iphone_NSObject__(me);

    //XMLVM_END_WRAPPER
}

