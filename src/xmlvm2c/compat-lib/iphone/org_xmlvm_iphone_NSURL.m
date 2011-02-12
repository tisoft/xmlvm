#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSURL.h"

#define XMLVM_CURRENT_CLASS_NAME NSURL
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSURL

__TIB_DEFINITION_org_xmlvm_iphone_NSURL __TIB_org_xmlvm_iphone_NSURL = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSURL, // classInitializer
    "org.xmlvm.iphone.NSURL", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURL;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURL_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

#include "org_xmlvm_iphone_NSString.h"

void org_xmlvm_iphone_NSURL_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSURL();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
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
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"URLWithString",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"fileURLWithPath",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"absoluteString",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSURL_URLWithString___java_lang_String(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSURL_fileURLWithPath___java_lang_String(argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_NSURL_absoluteString__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSURL()
{
    __TIB_org_xmlvm_iphone_NSURL.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSURL.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURL;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSURL.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSURL.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSURL_absoluteString__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSURL.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSURL.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSURL.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURL.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSURL.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSURL.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURL.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSURL.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSURL.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURL.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSURL = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSURL);
    __TIB_org_xmlvm_iphone_NSURL.clazz = __CLASS_org_xmlvm_iphone_NSURL;
    __CLASS_org_xmlvm_iphone_NSURL_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURL, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURL]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSURL(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURL]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURL()
{
    if (!__TIB_org_xmlvm_iphone_NSURL.classInitialized) __INIT_org_xmlvm_iphone_NSURL();
    org_xmlvm_iphone_NSURL* me = (org_xmlvm_iphone_NSURL*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURL));
    me->tib = &__TIB_org_xmlvm_iphone_NSURL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURL]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSURL);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURL()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSURL_URLWithString___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSURL.classInitialized) __INIT_org_xmlvm_iphone_NSURL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURL_URLWithString___java_lang_String]
    NSURL* url = [[NSURL alloc] initWithString: toNSString(n1)];
    org_xmlvm_iphone_NSURL* url_ = __NEW_org_xmlvm_iphone_NSURL();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(url_, url);
    return url_;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURL_fileURLWithPath___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSURL.classInitialized) __INIT_org_xmlvm_iphone_NSURL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURL_fileURLWithPath___java_lang_String]
    NSString* path = toNSString(n1);
    NSURL* url = [NSURL fileURLWithPath:path];
    [path release];
    org_xmlvm_iphone_NSURL* me = __NEW_org_xmlvm_iphone_NSURL();
    org_xmlvm_iphone_NSURL_INTERNAL_CONSTRUCTOR(me, url);
    return me;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURL_absoluteString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURL_absoluteString__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

