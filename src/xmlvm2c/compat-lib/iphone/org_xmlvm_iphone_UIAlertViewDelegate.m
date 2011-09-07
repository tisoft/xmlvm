#include "xmlvm.h"
#include "org_xmlvm_iphone_UIAlertView.h"

#include "org_xmlvm_iphone_UIAlertViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UIAlertViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIAlertViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UIAlertViewDelegate __TIB_org_xmlvm_iphone_UIAlertViewDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIAlertViewDelegate, // classInitializer
    "org.xmlvm.iphone.UIAlertViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIAlertViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertViewDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertViewDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertViewDelegate_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

@implementation UIAlertViewDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
{
    [super init];
    self->delegate = delegate_;
    self->alertView = JAVA_NULL;
    return self;
}

- (void) setAlertView:(JAVA_OBJECT) alertView_
{
	// TODO: Make use of DelegateWrapper bases class to support multiple source classes
	if (self->alertView != JAVA_NULL) {
		XMLVM_INTERNAL_ERROR();
	}

    self->alertView = alertView_;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    Func_VOOI func = (Func_VOOI) self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAlertViewDelegate_clickedButtonAtIndex___org_xmlvm_iphone_UIAlertView_int];
    return (*func)(self->delegate, self->alertView, buttonIndex);
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
}

- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
}

- (void)alertViewCancel:(UIAlertView *)alertView
{
}

- (void)didPresentAlertView:(UIAlertView *)alertView
{
}

- (void)willPresentAlertView:(UIAlertView *)alertView
{
}

@end

void org_xmlvm_iphone_UIAlertViewDelegate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIAlertViewDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIAlertViewDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIAlertViewDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIAlertViewDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIAlertViewDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIAlertViewDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIAlertViewDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIAlertViewDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIAlertViewDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIAlertViewDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIAlertViewDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAlertViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIAlertViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIAlertViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIAlertViewDelegate);
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.clazz = __CLASS_org_xmlvm_iphone_UIAlertViewDelegate;
    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIAlertViewDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAlertViewDelegate);
    __CLASS_org_xmlvm_iphone_UIAlertViewDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAlertViewDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIAlertViewDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAlertViewDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAlertViewDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIAlertViewDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIAlertViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAlertViewDelegate]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAlertViewDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAlertViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAlertViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UIAlertViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIAlertViewDelegate();
    org_xmlvm_iphone_UIAlertViewDelegate* me = (org_xmlvm_iphone_UIAlertViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAlertViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UIAlertViewDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAlertViewDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAlertViewDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAlertViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIAlertViewDelegate();
    org_xmlvm_iphone_UIAlertViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIAlertViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAlertViewDelegate___INIT___]
    UIAlertViewDelegateWrapper* obj = [[UIAlertViewDelegateWrapper alloc] initWithDelegate:me];
    org_xmlvm_iphone_UIAlertViewDelegate_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

