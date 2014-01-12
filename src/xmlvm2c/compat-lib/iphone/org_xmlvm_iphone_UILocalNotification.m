#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_NSCalendar.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_NSTimeZone.h"

#include "org_xmlvm_iphone_UILocalNotification.h"

#define XMLVM_CURRENT_CLASS_NAME UILocalNotification
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UILocalNotification

__TIB_DEFINITION_org_xmlvm_iphone_UILocalNotification __TIB_org_xmlvm_iphone_UILocalNotification = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UILocalNotification, // classInitializer
    "org.xmlvm.iphone.UILocalNotification", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UILocalNotification), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILocalNotification;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILocalNotification_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILocalNotification_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILocalNotification_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UILocalNotification();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UILocalNotification___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSDate,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSCalendar,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSTimeZone,
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_java_util_Map,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getAlertAction",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setAlertAction",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getAlertBody",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setAlertBody",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getAlertLaunchImage",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setAlertLaunchImage",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getApplicationIconBadgeNumber",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setApplicationIconBadgeNumber",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getFireDate",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSDate;",
    JAVA_NULL,
    JAVA_NULL},
    {"setFireDate",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSDate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isHasAction",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setHasAction",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getRepeatCalendar",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSCalendar;",
    JAVA_NULL,
    JAVA_NULL},
    {"setRepeatCalendar",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSCalendar;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getRepeatInterval",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setRepeatInterval",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getSoundName",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setSoundName",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getTimeZone",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSTimeZone;",
    JAVA_NULL,
    JAVA_NULL},
    {"setTimeZone",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSTimeZone;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getUserInfo",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/Map;",
    JAVA_NULL,
    JAVA_NULL},
    {"setUserInfo",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Map;)V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_UILocalNotification_getAlertAction__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_UILocalNotification_setAlertAction___java_lang_String(receiver, argsArray[0]);
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UILocalNotification_getAlertBody__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UILocalNotification_setAlertBody___java_lang_String(receiver, argsArray[0]);
        break;
    case 4:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UILocalNotification_getAlertLaunchImage__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UILocalNotification_setAlertLaunchImage___java_lang_String(receiver, argsArray[0]);
        break;
    case 6:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UILocalNotification_getApplicationIconBadgeNumber__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 7:
        org_xmlvm_iphone_UILocalNotification_setApplicationIconBadgeNumber___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 8:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UILocalNotification_getFireDate__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UILocalNotification_setFireDate___org_xmlvm_iphone_NSDate(receiver, argsArray[0]);
        break;
    case 10:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UILocalNotification_isHasAction__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 11:
        org_xmlvm_iphone_UILocalNotification_setHasAction___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 12:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UILocalNotification_getRepeatCalendar__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_UILocalNotification_setRepeatCalendar___org_xmlvm_iphone_NSCalendar(receiver, argsArray[0]);
        break;
    case 14:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UILocalNotification_getRepeatInterval__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 15:
        org_xmlvm_iphone_UILocalNotification_setRepeatInterval___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 16:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UILocalNotification_getSoundName__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_UILocalNotification_setSoundName___java_lang_String(receiver, argsArray[0]);
        break;
    case 18:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UILocalNotification_getTimeZone__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_UILocalNotification_setTimeZone___org_xmlvm_iphone_NSTimeZone(receiver, argsArray[0]);
        break;
    case 20:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UILocalNotification_getUserInfo__(receiver);
        break;
    case 21:
        org_xmlvm_iphone_UILocalNotification_setUserInfo___java_util_Map(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UILocalNotification()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UILocalNotification);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UILocalNotification.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UILocalNotification.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UILocalNotification);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UILocalNotification.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UILocalNotification.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UILocalNotification.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UILocalNotification")
        __INIT_IMPL_org_xmlvm_iphone_UILocalNotification();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UILocalNotification()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_UILocalNotification.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UILocalNotification;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UILocalNotification.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UILocalNotification.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UILocalNotification.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UILocalNotification.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UILocalNotification.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UILocalNotification.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UILocalNotification.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UILocalNotification.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UILocalNotification.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UILocalNotification.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UILocalNotification.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UILocalNotification = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UILocalNotification);
    __TIB_org_xmlvm_iphone_UILocalNotification.clazz = __CLASS_org_xmlvm_iphone_UILocalNotification;
    __TIB_org_xmlvm_iphone_UILocalNotification.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UILocalNotification_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILocalNotification);
    __CLASS_org_xmlvm_iphone_UILocalNotification_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILocalNotification_1ARRAY);
    __CLASS_org_xmlvm_iphone_UILocalNotification_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILocalNotification_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UILocalNotification]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UILocalNotification.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UILocalNotification(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UILocalNotification]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UILocalNotification(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UILocalNotification]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UILocalNotification()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UILocalNotification)
org_xmlvm_iphone_UILocalNotification* me = (org_xmlvm_iphone_UILocalNotification*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UILocalNotification));
    me->tib = &__TIB_org_xmlvm_iphone_UILocalNotification;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UILocalNotification(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UILocalNotification]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UILocalNotification()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UILocalNotification();
    org_xmlvm_iphone_UILocalNotification___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UILocalNotification___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILocalNotification_getAlertAction__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getAlertAction__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setAlertAction___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setAlertAction___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILocalNotification_getAlertBody__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getAlertBody__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setAlertBody___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setAlertBody___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILocalNotification_getAlertLaunchImage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getAlertLaunchImage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setAlertLaunchImage___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setAlertLaunchImage___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UILocalNotification_getApplicationIconBadgeNumber__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getApplicationIconBadgeNumber__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setApplicationIconBadgeNumber___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setApplicationIconBadgeNumber___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILocalNotification_getFireDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getFireDate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setFireDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setFireDate___org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UILocalNotification_isHasAction__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_isHasAction__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setHasAction___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setHasAction___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILocalNotification_getRepeatCalendar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getRepeatCalendar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setRepeatCalendar___org_xmlvm_iphone_NSCalendar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setRepeatCalendar___org_xmlvm_iphone_NSCalendar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UILocalNotification_getRepeatInterval__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getRepeatInterval__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setRepeatInterval___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setRepeatInterval___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILocalNotification_getSoundName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getSoundName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setSoundName___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setSoundName___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILocalNotification_getTimeZone__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getTimeZone__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setTimeZone___org_xmlvm_iphone_NSTimeZone(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setTimeZone___org_xmlvm_iphone_NSTimeZone]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILocalNotification_getUserInfo__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_getUserInfo__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILocalNotification_setUserInfo___java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILocalNotification_setUserInfo___java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

