#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_lang_UnsupportedOperationException.h"
#include "java_util_List.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_NSURL.h"

#include "org_xmlvm_iphone_NSHTTPCookie.h"

#define XMLVM_CURRENT_CLASS_NAME NSHTTPCookie
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSHTTPCookie

__TIB_DEFINITION_org_xmlvm_iphone_NSHTTPCookie __TIB_org_xmlvm_iphone_NSHTTPCookie = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSHTTPCookie, // classInitializer
    "org.xmlvm.iphone.NSHTTPCookie", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSHTTPCookie), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPCookie;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPCookie_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPCookie_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPCookie_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_util_Map,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Map;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSHTTPCookie();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSHTTPCookie___INIT____java_util_Map(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_util_Map,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_util_Map,
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"cookieWithProperties",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Map;)Lorg/xmlvm/iphone/NSHTTPCookie;",
    JAVA_NULL,
    JAVA_NULL},
    {"requestHeaderFieldsWithCookies",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)Ljava/util/Map;",
    JAVA_NULL,
    JAVA_NULL},
    {"cookiesWithResponseHeaderFields",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Map;Lorg/xmlvm/iphone/NSURL;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"properties",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/Map;",
    JAVA_NULL,
    JAVA_NULL},
    {"versionCookie",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"name",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"value",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"expiresDate",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSDate;",
    JAVA_NULL,
    JAVA_NULL},
    {"isSessionOnly",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"domain",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"path",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"isSecure",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"isHTTPOnly",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"comment",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"commentURL",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSURL;",
    JAVA_NULL,
    JAVA_NULL},
    {"portList",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_cookieWithProperties___java_util_Map(argsArray[0]);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_requestHeaderFieldsWithCookies___java_util_List(argsArray[0]);
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_cookiesWithResponseHeaderFields___java_util_Map_org_xmlvm_iphone_NSURL(argsArray[0], argsArray[1]);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_properties__(receiver);
        break;
    case 4:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_NSHTTPCookie_versionCookie__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 5:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_name__(receiver);
        break;
    case 6:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_value__(receiver);
        break;
    case 7:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_expiresDate__(receiver);
        break;
    case 8:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_NSHTTPCookie_isSessionOnly__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 9:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_domain__(receiver);
        break;
    case 10:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_path__(receiver);
        break;
    case 11:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_NSHTTPCookie_isSecure__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 12:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_NSHTTPCookie_isHTTPOnly__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 13:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_comment__(receiver);
        break;
    case 14:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_commentURL__(receiver);
        break;
    case 15:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookie_portList__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSHTTPCookie()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSHTTPCookie);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSHTTPCookie.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSHTTPCookie.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSHTTPCookie);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSHTTPCookie.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSHTTPCookie.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSHTTPCookie.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSHTTPCookie")
        __INIT_IMPL_org_xmlvm_iphone_NSHTTPCookie();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSHTTPCookie()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_NSHTTPCookie.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPCookie;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSHTTPCookie.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSHTTPCookie.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSHTTPCookie.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSHTTPCookie.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSHTTPCookie.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSHTTPCookie.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSHTTPCookie.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSHTTPCookie.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSHTTPCookie.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSHTTPCookie.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSHTTPCookie.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSHTTPCookie = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSHTTPCookie);
    __TIB_org_xmlvm_iphone_NSHTTPCookie.clazz = __CLASS_org_xmlvm_iphone_NSHTTPCookie;
    __TIB_org_xmlvm_iphone_NSHTTPCookie.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSHTTPCookie_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSHTTPCookie);
    __CLASS_org_xmlvm_iphone_NSHTTPCookie_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSHTTPCookie_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSHTTPCookie_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSHTTPCookie_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSHTTPCookie]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSHTTPCookie.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSHTTPCookie(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSHTTPCookie]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPCookie(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPCookie]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSHTTPCookie()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSHTTPCookie)
org_xmlvm_iphone_NSHTTPCookie* me = (org_xmlvm_iphone_NSHTTPCookie*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSHTTPCookie));
    me->tib = &__TIB_org_xmlvm_iphone_NSHTTPCookie;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPCookie(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSHTTPCookie]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPCookie()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_cookieWithProperties___java_util_Map(JAVA_OBJECT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSHTTPCookie)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_cookieWithProperties___java_util_Map]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "cookieWithProperties", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r1.o = n1;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 35)
    _r0.o = JAVA_NULL;
    XMLVM_EXIT_METHOD()
    return _r0.o;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_requestHeaderFieldsWithCookies___java_util_List(JAVA_OBJECT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSHTTPCookie)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_requestHeaderFieldsWithCookies___java_util_List]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "requestHeaderFieldsWithCookies", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = n1;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 42)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_cookiesWithResponseHeaderFields___java_util_Map_org_xmlvm_iphone_NSURL(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSHTTPCookie)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_cookiesWithResponseHeaderFields___java_util_Map_org_xmlvm_iphone_NSURL]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "cookiesWithResponseHeaderFields", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = n1;
    _r3.o = n2;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 50)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSHTTPCookie___INIT____java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie___INIT____java_util_Map]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "<init>", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.o = n1;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 59)
    XMLVM_CHECK_NPE(0)
    org_xmlvm_iphone_NSObject___INIT___(_r0.o);
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_properties__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_properties__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "properties", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 70)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSHTTPCookie_versionCookie__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_versionCookie__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "versionCookie", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 77)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_name__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_name__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "name", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 84)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_value__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_value__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "value", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 91)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_expiresDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_expiresDate__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "expiresDate", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 98)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSHTTPCookie_isSessionOnly__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_isSessionOnly__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "isSessionOnly", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 105)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_domain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_domain__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "domain", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 112)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_path__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_path__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "path", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 119)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSHTTPCookie_isSecure__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_isSecure__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "isSecure", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 126)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSHTTPCookie_isHTTPOnly__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_isHTTPOnly__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "isHTTPOnly", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 133)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_comment__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_comment__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "comment", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 140)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_commentURL__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_commentURL__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "commentURL", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 147)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookie_portList__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookie_portList__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookie", "portList", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookie.java", 154)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

