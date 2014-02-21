#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_lang_UnsupportedOperationException.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_NSHTTPCookie.h"
#include "org_xmlvm_iphone_NSURL.h"

#include "org_xmlvm_iphone_NSHTTPCookieStorage.h"

#define XMLVM_CURRENT_CLASS_NAME NSHTTPCookieStorage
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSHTTPCookieStorage

__TIB_DEFINITION_org_xmlvm_iphone_NSHTTPCookieStorage __TIB_org_xmlvm_iphone_NSHTTPCookieStorage = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSHTTPCookieStorage, // classInitializer
    "org.xmlvm.iphone.NSHTTPCookieStorage", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSHTTPCookieStorage), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSHTTPCookieStorage();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSHTTPCookieStorage___INIT___(obj);
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
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSHTTPCookie,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSHTTPCookie,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_util_List,
    &__CLASS_org_xmlvm_iphone_NSURL,
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_java_util_List,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"sharedHTTPCookieStorage",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSHTTPCookieStorage;",
    JAVA_NULL,
    JAVA_NULL},
    {"cookies",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setCookie",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSHTTPCookie;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"deleteCookie",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSHTTPCookie;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"cookiesForURL",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSURL;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setCookies",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;Lorg/xmlvm/iphone/NSURL;Lorg/xmlvm/iphone/NSURL;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"cookieAcceptPolicy",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setCookieAcceptPolicy",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"sortedCookiesUsingDescriptors",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)Ljava/util/List;",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookieStorage_sharedHTTPCookieStorage__();
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookieStorage_cookies__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_NSHTTPCookieStorage_setCookie___org_xmlvm_iphone_NSHTTPCookie(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_NSHTTPCookieStorage_deleteCookie___org_xmlvm_iphone_NSHTTPCookie(receiver, argsArray[0]);
        break;
    case 4:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookieStorage_cookiesForURL___org_xmlvm_iphone_NSURL(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_NSHTTPCookieStorage_setCookies___java_util_List_org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSURL(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 6:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_NSHTTPCookieStorage_cookieAcceptPolicy__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 7:
        org_xmlvm_iphone_NSHTTPCookieStorage_setCookieAcceptPolicy___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 8:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSHTTPCookieStorage_sortedCookiesUsingDescriptors___java_util_List(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSHTTPCookieStorage()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSHTTPCookieStorage);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSHTTPCookieStorage);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSHTTPCookieStorage.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSHTTPCookieStorage.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSHTTPCookieStorage")
        __INIT_IMPL_org_xmlvm_iphone_NSHTTPCookieStorage();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSHTTPCookieStorage()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPCookieStorage;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSHTTPCookieStorage.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSHTTPCookieStorage);
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.clazz = __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage;
    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSHTTPCookieStorage);
    __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSHTTPCookieStorage_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSHTTPCookieStorage_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSHTTPCookieStorage_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSHTTPCookieStorage]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSHTTPCookieStorage.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSHTTPCookieStorage(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSHTTPCookieStorage]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPCookieStorage(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPCookieStorage]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSHTTPCookieStorage()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSHTTPCookieStorage)
org_xmlvm_iphone_NSHTTPCookieStorage* me = (org_xmlvm_iphone_NSHTTPCookieStorage*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSHTTPCookieStorage));
    me->tib = &__TIB_org_xmlvm_iphone_NSHTTPCookieStorage;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPCookieStorage(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSHTTPCookieStorage]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPCookieStorage()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSHTTPCookieStorage();
    org_xmlvm_iphone_NSHTTPCookieStorage___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookieStorage_sharedHTTPCookieStorage__()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSHTTPCookieStorage)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_sharedHTTPCookieStorage__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "sharedHTTPCookieStorage", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 34)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSHTTPCookieStorage___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage___INIT___]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "<init>", "?")
    XMLVMElem _r0;
    _r0.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 44)
    XMLVM_CHECK_NPE(0)
    org_xmlvm_iphone_NSObject___INIT___(_r0.o);
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 45)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookieStorage_cookies__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_cookies__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "cookies", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 54)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSHTTPCookieStorage_setCookie___org_xmlvm_iphone_NSHTTPCookie(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_setCookie___org_xmlvm_iphone_NSHTTPCookie]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "setCookie", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 61)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSHTTPCookieStorage_deleteCookie___org_xmlvm_iphone_NSHTTPCookie(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_deleteCookie___org_xmlvm_iphone_NSHTTPCookie]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "deleteCookie", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 68)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookieStorage_cookiesForURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_cookiesForURL___org_xmlvm_iphone_NSURL]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "cookiesForURL", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 75)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSHTTPCookieStorage_setCookies___java_util_List_org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_setCookies___java_util_List_org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSURL]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "setCookies", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    XMLVMElem _r5;
    _r2.o = me;
    _r3.o = n1;
    _r4.o = n2;
    _r5.o = n3;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 83)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSHTTPCookieStorage_cookieAcceptPolicy__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_cookieAcceptPolicy__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "cookieAcceptPolicy", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 90)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSHTTPCookieStorage_setCookieAcceptPolicy___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_setCookieAcceptPolicy___int]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "setCookieAcceptPolicy", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.i = n1;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 98)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSHTTPCookieStorage_sortedCookiesUsingDescriptors___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPCookieStorage_sortedCookiesUsingDescriptors___java_util_List]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSHTTPCookieStorage", "sortedCookiesUsingDescriptors", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("NSHTTPCookieStorage.java", 105)
    _r0.o = __NEW_java_lang_UnsupportedOperationException();
    // "Not supported yet."
    _r1.o = xmlvm_create_java_string_from_pool(0);
    XMLVM_CHECK_NPE(0)
    java_lang_UnsupportedOperationException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

