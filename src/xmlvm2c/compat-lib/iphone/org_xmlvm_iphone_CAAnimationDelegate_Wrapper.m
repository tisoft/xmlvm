#include "xmlvm.h"
#include "org_xmlvm_iphone_CAAnimationDelegate.h"

#include "org_xmlvm_iphone_CAAnimationDelegate_Wrapper.h"

#define XMLVM_CURRENT_CLASS_NAME CAAnimationDelegate_Wrapper
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CAAnimationDelegate_Wrapper

__TIB_DEFINITION_org_xmlvm_iphone_CAAnimationDelegate_Wrapper __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CAAnimationDelegate_Wrapper, // classInitializer
    "org.xmlvm.iphone.CAAnimationDelegate$Wrapper", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CAAnimationDelegate_Wrapper), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

@implementation CAAnimationDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) d_
{
    [super init];
    self->delegate_ = d_;
    return self;
}

- (void)animationDidStart:(CAAnimation *)theAnimation
{
    org_xmlvm_iphone_CAAnimation* caAnimation_ = [self getSource: theAnimation];
    Func_VOO callback = (Func_VOO) ((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAAnimationDelegate_animationDidStart___org_xmlvm_iphone_CAAnimation];
    callback(delegate_, caAnimation_);
}

- (void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag
{
    org_xmlvm_iphone_CAAnimation* caAnimation_ = [self getSource: theAnimation];
    Func_VOOO callback = (Func_VOOO) ((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAAnimationDelegate_animationDidStop___org_xmlvm_iphone_CAAnimation_boolean];
    XMLVM_VAR_BOOLEAN(flag_, flag)
    callback(delegate_, caAnimation_, flag_);
}

@end

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"delegate",
    &__CLASS_org_xmlvm_iphone_CAAnimationDelegate,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CAAnimationDelegate_Wrapper, fields.org_xmlvm_iphone_CAAnimationDelegate_Wrapper.delegate_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CAAnimationDelegate,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CAAnimationDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CAAnimationDelegate_Wrapper();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CAAnimationDelegate_Wrapper___INIT____org_xmlvm_iphone_CAAnimationDelegate(obj, argsArray[0]);
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

void __INIT_org_xmlvm_iphone_CAAnimationDelegate_Wrapper()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CAAnimationDelegate_Wrapper();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CAAnimationDelegate_Wrapper()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CAAnimationDelegate_Wrapper;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper);
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.clazz = __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper;
    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper);
    __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_1ARRAY);
    __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CAAnimationDelegate_Wrapper]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CAAnimationDelegate_Wrapper(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CAAnimationDelegate_Wrapper]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_CAAnimationDelegate_Wrapper*) me)->fields.org_xmlvm_iphone_CAAnimationDelegate_Wrapper.delegate_ = (org_xmlvm_iphone_CAAnimationDelegate*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CAAnimationDelegate_Wrapper()
{
    if (!__TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper.classInitialized) __INIT_org_xmlvm_iphone_CAAnimationDelegate_Wrapper();
    org_xmlvm_iphone_CAAnimationDelegate_Wrapper* me = (org_xmlvm_iphone_CAAnimationDelegate_Wrapper*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CAAnimationDelegate_Wrapper));
    me->tib = &__TIB_org_xmlvm_iphone_CAAnimationDelegate_Wrapper;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CAAnimationDelegate_Wrapper]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CAAnimationDelegate_Wrapper()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CAAnimationDelegate_Wrapper___INIT____org_xmlvm_iphone_CAAnimationDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CAAnimationDelegate_Wrapper___INIT____org_xmlvm_iphone_CAAnimationDelegate]

    org_xmlvm_iphone_CAAnimationDelegate_Wrapper* jthiz = me;
    jthiz->fields.org_xmlvm_iphone_CAAnimationDelegate_Wrapper.delegate_ = n1;

    CAAnimationDelegateWrapper* nativeDelegateWrapper = [[CAAnimationDelegateWrapper alloc] initWithDelegate:n1];

    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, nativeDelegateWrapper);

    //XMLVM_END_WRAPPER
}

