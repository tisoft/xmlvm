#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CABasicAnimation.h"

#define XMLVM_CURRENT_CLASS_NAME CABasicAnimation
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CABasicAnimation

__TIB_DEFINITION_org_xmlvm_iphone_CABasicAnimation __TIB_org_xmlvm_iphone_CABasicAnimation = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CABasicAnimation, // classInitializer
    "org.xmlvm.iphone.CABasicAnimation", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CAPropertyAnimation, // extends
    sizeof(org_xmlvm_iphone_CABasicAnimation), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CABasicAnimation;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CABasicAnimation_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CABasicAnimation_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CABasicAnimation_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_CABasicAnimation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_CAPropertyAnimation_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [CABasicAnimation class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_CABasicAnimation();
        org_xmlvm_iphone_CABasicAnimation_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CABasicAnimation();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CABasicAnimation___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"animationWithKeyPath",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getByValue",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setByValue",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getToValue",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setToValue",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getFromValue",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setFromValue",
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
        org_xmlvm_iphone_CABasicAnimation_animationWithKeyPath___java_lang_String(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_CABasicAnimation_getByValue__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_CABasicAnimation_setByValue___java_lang_Object(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_CABasicAnimation_getToValue__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_CABasicAnimation_setToValue___java_lang_Object(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_CABasicAnimation_getFromValue__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_CABasicAnimation_setFromValue___java_lang_Object(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CABasicAnimation()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CABasicAnimation);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CABasicAnimation.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CABasicAnimation.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CABasicAnimation);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CABasicAnimation.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CABasicAnimation.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CABasicAnimation.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CABasicAnimation();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CABasicAnimation()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_CAPropertyAnimation.classInitialized) __INIT_org_xmlvm_iphone_CAPropertyAnimation();
    __TIB_org_xmlvm_iphone_CABasicAnimation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CABasicAnimation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CABasicAnimation.vtable, __TIB_org_xmlvm_iphone_CAPropertyAnimation.vtable, sizeof(__TIB_org_xmlvm_iphone_CAPropertyAnimation.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CABasicAnimation.numImplementedInterfaces = 2;
    __TIB_org_xmlvm_iphone_CABasicAnimation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 2);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    if (!__TIB_org_xmlvm_iphone_CAAction.classInitialized) __INIT_org_xmlvm_iphone_CAAction();
    __TIB_org_xmlvm_iphone_CABasicAnimation.implementedInterfaces[0][0] = &__TIB_org_xmlvm_iphone_CAAction;

    if (!__TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized) __INIT_org_xmlvm_iphone_CAMediaTiming();
    __TIB_org_xmlvm_iphone_CABasicAnimation.implementedInterfaces[0][1] = &__TIB_org_xmlvm_iphone_CAMediaTiming;
    // Initialize itable for this class
    __TIB_org_xmlvm_iphone_CABasicAnimation.itableBegin = &__TIB_org_xmlvm_iphone_CABasicAnimation.itable[0];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAAction_runAction___java_lang_String_org_xmlvm_iphone_NSObject_java_util_Map] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[15];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_getBeginTime__] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[7];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_getDuration__] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[8];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_getFillMode__] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[9];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_getRepeatCount__] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[10];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_getRepeatDuration__] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[11];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_getSpeed__] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[12];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_getTimeOffset__] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[13];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_isAutoreverses__] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[14];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_setAutoreverses___boolean] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[16];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_setBeginTime___double] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[17];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_setDuration___double] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[18];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_setFillMode___java_lang_String] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[19];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_setRepeatCount___float] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[20];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_setRepeatDuration___double] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[21];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_setSpeed___float] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[22];
    __TIB_org_xmlvm_iphone_CABasicAnimation.itable[XMLVM_ITABLE_IDX_org_xmlvm_iphone_CAMediaTiming_setTimeOffset___double] = __TIB_org_xmlvm_iphone_CABasicAnimation.vtable[23];


    __TIB_org_xmlvm_iphone_CABasicAnimation.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CABasicAnimation.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CABasicAnimation.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CABasicAnimation.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CABasicAnimation.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CABasicAnimation.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CABasicAnimation.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CABasicAnimation.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CABasicAnimation = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CABasicAnimation);
    __TIB_org_xmlvm_iphone_CABasicAnimation.clazz = __CLASS_org_xmlvm_iphone_CABasicAnimation;
    __TIB_org_xmlvm_iphone_CABasicAnimation.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CABasicAnimation_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CABasicAnimation);
    __CLASS_org_xmlvm_iphone_CABasicAnimation_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CABasicAnimation_1ARRAY);
    __CLASS_org_xmlvm_iphone_CABasicAnimation_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CABasicAnimation_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CABasicAnimation]

    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);

    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CABasicAnimation.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CABasicAnimation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CABasicAnimation]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CABasicAnimation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CAPropertyAnimation(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CABasicAnimation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CABasicAnimation()
{
    if (!__TIB_org_xmlvm_iphone_CABasicAnimation.classInitialized) __INIT_org_xmlvm_iphone_CABasicAnimation();
    org_xmlvm_iphone_CABasicAnimation* me = (org_xmlvm_iphone_CABasicAnimation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CABasicAnimation));
    me->tib = &__TIB_org_xmlvm_iphone_CABasicAnimation;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CABasicAnimation(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CABasicAnimation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CABasicAnimation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CABasicAnimation();
    org_xmlvm_iphone_CABasicAnimation___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CABasicAnimation_animationWithKeyPath___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_CABasicAnimation.classInitialized) __INIT_org_xmlvm_iphone_CABasicAnimation();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CABasicAnimation_animationWithKeyPath___java_lang_String]
    XMLVM_VAR_NSString(keyPath, n1);
    id caBasicAnimation = [CABasicAnimation animationWithKeyPath:keyPath];
    [keyPath release];
    return xmlvm_get_associated_c_object(caBasicAnimation);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CABasicAnimation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CABasicAnimation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CABasicAnimation_getByValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CABasicAnimation_getByValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CABasicAnimation_setByValue___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CABasicAnimation_setByValue___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CABasicAnimation_getToValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CABasicAnimation_getToValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CABasicAnimation_setToValue___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CABasicAnimation_setToValue___java_lang_Object]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(NSObject, toVal, n1);
    thiz.toValue = toVal;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CABasicAnimation_getFromValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CABasicAnimation_getFromValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CABasicAnimation_setFromValue___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CABasicAnimation_setFromValue___java_lang_Object]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(NSObject, fromVal, n1);
    thiz.fromValue = fromVal;
    //XMLVM_END_WRAPPER
}

