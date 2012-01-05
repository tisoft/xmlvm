#include "xmlvm.h"
#include "org_xmlvm_iphone_UIViewAnimationDelegate.h"

#include "org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.h"

#define XMLVM_CURRENT_CLASS_NAME UIViewAnimationDelegate_Wrapper
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper

__TIB_DEFINITION_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper, // classInitializer
    "org.xmlvm.iphone.UIViewAnimationDelegate$Wrapper", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

@implementation UIViewAnimationDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) d_
{
    [super init];
    self->delegate_ = d_;
    return self;
}

- (void)animationDidStart:(NSString *)animationID context:(void *)context
{
    Func_VOOO callback = (Func_VOOO) ((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_UIViewAnimationDelegate_animationDidStart___java_lang_String_java_lang_Object];
    java_lang_String* jAnimationID = fromNSString(animationID);
    callback(delegate_, jAnimationID, context);
}

- (void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context
{
    Func_VOOOO callback = (Func_VOOOO) ((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_UIViewAnimationDelegate_animationDidStop___java_lang_String_boolean_java_lang_Object];
    java_lang_String* jAnimationID = fromNSString(animationID);
    callback(delegate_, jAnimationID, finished, context);
}

@end

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"delegate",
    &__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper, fields.org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.delegate_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIViewAnimationDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper___INIT____org_xmlvm_iphone_UIViewAnimationDelegate(obj, argsArray[0]);
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
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper);
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.clazz = __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper;
    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper);
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper*) me)->fields.org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.delegate_ = (org_xmlvm_iphone_UIViewAnimationDelegate*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper();
    org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper* me = (org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper___INIT____org_xmlvm_iphone_UIViewAnimationDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper___INIT____org_xmlvm_iphone_UIViewAnimationDelegate]

    org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper* jthiz = me;
    jthiz->fields.org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper.delegate_ = n1;

    UIViewAnimationDelegateWrapper* wrapper = [[UIViewAnimationDelegateWrapper alloc] initWithDelegate: n1];

    org_xmlvm_iphone_UIViewAnimationDelegate_Wrapper_INTERNAL_CONSTRUCTOR(me, wrapper);

    //XMLVM_END_WRAPPER
}

