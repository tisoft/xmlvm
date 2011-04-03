#include "xmlvm.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_UIControlDelegate.h"

#include "org_xmlvm_iphone_UIControl.h"

#define XMLVM_CURRENT_CLASS_NAME UIControl
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIControl

__TIB_DEFINITION_org_xmlvm_iphone_UIControl __TIB_org_xmlvm_iphone_UIControl = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIControl, // classInitializer
    "org.xmlvm.iphone.UIControl", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIControl), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIControl.h>
#include "xmlvm-util.h"


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
    {"delegates",
    &__CLASS_java_util_Map,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIControl, fields.org_xmlvm_iphone_UIControl.delegates_),
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
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
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

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"addTarget",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getAllTargets",
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
    {"isEnabled",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setEnabled",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isSelected",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelected",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isHighlighted",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setHighlighted",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_UIControl_getAllTargets__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_UIControl_isEnabled__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UIControl_setEnabled___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 5:
        org_xmlvm_iphone_UIControl_isSelected__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_UIControl_setSelected___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 7:
        org_xmlvm_iphone_UIControl_isHighlighted__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_UIControl_setHighlighted___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIControl()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIControl);
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIControl();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIControl);
}

void __INIT_IMPL_org_xmlvm_iphone_UIControl()
{
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIControl.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIView();
        __TIB_org_xmlvm_iphone_UIControl.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControl;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIControl.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UIControl.vtable[65] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int;
        __TIB_org_xmlvm_iphone_UIControl.vtable[66] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_getAllTargets__;
        __TIB_org_xmlvm_iphone_UIControl.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
        __TIB_org_xmlvm_iphone_UIControl.vtable[67] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_isEnabled__;
        __TIB_org_xmlvm_iphone_UIControl.vtable[68] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_setEnabled___boolean;
        __TIB_org_xmlvm_iphone_UIControl.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_isSelected__;
        __TIB_org_xmlvm_iphone_UIControl.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_setSelected___boolean;
        __TIB_org_xmlvm_iphone_UIControl.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_isHighlighted__;
        __TIB_org_xmlvm_iphone_UIControl.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_setHighlighted___boolean;
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
        __CLASS_org_xmlvm_iphone_UIControl_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControl, 3);
        __CLASS_org_xmlvm_iphone_UIControl_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControl, 2);
        __CLASS_org_xmlvm_iphone_UIControl_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControl, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControl]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIControl.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIControl(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControl]
    org_xmlvm_iphone_UIControl* thiz = me;
    [((UIControl*) (thiz->fields.org_xmlvm_iphone_UIControl.delegateWrapper)) release];
    __DELETE_org_xmlvm_iphone_UIView(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
    ((org_xmlvm_iphone_UIControl*) me)->fields.org_xmlvm_iphone_UIControl.delegates_ = (java_util_Map*) JAVA_NULL;
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControl()
{
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    org_xmlvm_iphone_UIControl* me = (org_xmlvm_iphone_UIControl*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControl));
    me->tib = &__TIB_org_xmlvm_iphone_UIControl;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl(me);
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
    org_xmlvm_iphone_UIControl* thiz = me;
    thiz->fields.org_xmlvm_iphone_UIControl.jdelegateWrapper = n1;
    UIControlDelegateWrapper* wrapper = [[UIControlDelegateWrapper alloc] initWithDelegate:n1 :me];
    thiz->fields.org_xmlvm_iphone_UIControl.delegateWrapper = wrapper;
    [((UIControl*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) addTarget:wrapper action:@selector(raiseEvent::)
                                                                   forControlEvents:n2];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIControl_getAllTargets__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_getAllTargets__]
    org_xmlvm_iphone_UIControl* thiz = me;
    NSSet* targets = [((UIControl*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) allTargets];
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
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_setEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_setEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
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

