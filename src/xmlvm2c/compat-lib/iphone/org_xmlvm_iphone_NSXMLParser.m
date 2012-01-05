#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSXMLParserDelegate.h"

#include "org_xmlvm_iphone_NSXMLParser.h"

#define XMLVM_CURRENT_CLASS_NAME NSXMLParser
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSXMLParser

__TIB_DEFINITION_org_xmlvm_iphone_NSXMLParser __TIB_org_xmlvm_iphone_NSXMLParser = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSXMLParser, // classInitializer
    "org.xmlvm.iphone.NSXMLParser", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSXMLParser), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParser;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParser_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParser_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParser_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSData;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSXMLParser();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSXMLParser___INIT____org_xmlvm_iphone_NSData(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSXMLParserDelegate,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setDelegate",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSXMLParserDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setShouldProcessNamespaces",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldProcessNamespaces",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setShouldReportNamespacePrefixes",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldReportNamespacePrefixes",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"parse",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
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
        org_xmlvm_iphone_NSXMLParser_setDelegate___org_xmlvm_iphone_NSXMLParserDelegate(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSXMLParser_setShouldProcessNamespaces___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 2:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_NSXMLParser_shouldProcessNamespaces__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 3:
        org_xmlvm_iphone_NSXMLParser_setShouldReportNamespacePrefixes___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 4:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_NSXMLParser_shouldReportNamespacePrefixes__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 5:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_NSXMLParser_parse__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSXMLParser()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSXMLParser);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSXMLParser.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSXMLParser.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSXMLParser);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSXMLParser.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSXMLParser.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSXMLParser.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSXMLParser();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSXMLParser()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSXMLParser.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParser;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSXMLParser.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSXMLParser.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSXMLParser.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSXMLParser.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParser.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSXMLParser.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSXMLParser.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParser.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSXMLParser.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSXMLParser.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParser.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSXMLParser = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSXMLParser);
    __TIB_org_xmlvm_iphone_NSXMLParser.clazz = __CLASS_org_xmlvm_iphone_NSXMLParser;
    __TIB_org_xmlvm_iphone_NSXMLParser.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSXMLParser_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSXMLParser);
    __CLASS_org_xmlvm_iphone_NSXMLParser_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSXMLParser_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSXMLParser_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSXMLParser_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSXMLParser]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSXMLParser.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSXMLParser(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSXMLParser]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParser(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParser]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParser()
{
    if (!__TIB_org_xmlvm_iphone_NSXMLParser.classInitialized) __INIT_org_xmlvm_iphone_NSXMLParser();
    org_xmlvm_iphone_NSXMLParser* me = (org_xmlvm_iphone_NSXMLParser*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSXMLParser));
    me->tib = &__TIB_org_xmlvm_iphone_NSXMLParser;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParser(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSXMLParser]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParser()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSXMLParser___INIT____org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser___INIT____org_xmlvm_iphone_NSData]
    XMLVM_VAR_THIZ;
    jthiz->fields.org_xmlvm_iphone_NSXMLParser.delegate = JAVA_NULL;
    org_xmlvm_iphone_NSData* data = n1;
    NSXMLParser* parser = [[NSXMLParser alloc] initWithData:data->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, parser);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParser_setDelegate___org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_setDelegate___org_xmlvm_iphone_NSXMLParserDelegate]
    XMLVM_VAR_THIZ;
    org_xmlvm_iphone_NSXMLParserDelegate* delegate = n1;
    jthiz->fields.org_xmlvm_iphone_NSXMLParser.delegate = delegate;
    NSXMLParserDelegateWrapper* delegateWrapper = delegate->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    [delegateWrapper setParser:me];
    [thiz setDelegate:delegateWrapper];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParser_setShouldProcessNamespaces___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_setShouldProcessNamespaces___boolean]
    org_xmlvm_iphone_NSXMLParser* thiz = me;
    [((NSXMLParser*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) setShouldProcessNamespaces:n1];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_shouldProcessNamespaces__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_shouldProcessNamespaces__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParser_setShouldReportNamespacePrefixes___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_setShouldReportNamespacePrefixes___boolean]
    org_xmlvm_iphone_NSXMLParser* thiz = me;
    [((NSXMLParser*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) setShouldReportNamespacePrefixes:n1];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_shouldReportNamespacePrefixes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_shouldReportNamespacePrefixes__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_parse__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_parse__]
    org_xmlvm_iphone_NSXMLParser* thiz = me;
    return [((NSXMLParser*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) parse];
    //XMLVM_END_WRAPPER
}

