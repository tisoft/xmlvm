#include "xmlvm.h"
#include "org_xmlvm_iphone_CFAllocator.h"

#include "org_xmlvm_iphone_CFURL.h"

#define XMLVM_CURRENT_CLASS_NAME CFURL
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CFURL

__TIB_DEFINITION_org_xmlvm_iphone_CFURL __TIB_org_xmlvm_iphone_CFURL = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CFURL, // classInitializer
    "org.xmlvm.iphone.CFURL", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CFType, // extends
    sizeof(org_xmlvm_iphone_CFURL), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFURL;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFURL_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFURL_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFURL_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <CoreFoundation/CoreFoundation.h>
#include "xmlvm-ios.h"

void org_xmlvm_iphone_CFURL_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, CFTypeRef wrappedCFTypeRef)
{
    org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(me, wrappedCFTypeRef);
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CFURL();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CFURL___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CFAllocator,
    &__CLASS_byte_1ARRAY,
    &__CLASS_byte,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"createFromFileSystemRepresentation",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CFAllocator;[BB)Lorg/xmlvm/iphone/CFURL;",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_CFURL_createFromFileSystemRepresentation___org_xmlvm_iphone_CFAllocator_byte_1ARRAY_byte(argsArray[0], argsArray[1], ((java_lang_Byte*) argsArray[2])->fields.java_lang_Byte.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CFURL()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CFURL);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CFURL.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CFURL.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CFURL);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CFURL.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CFURL.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CFURL.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CFURL")
        __INIT_IMPL_org_xmlvm_iphone_CFURL();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CFURL()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFType)
    __TIB_org_xmlvm_iphone_CFURL.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CFURL;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CFURL.vtable, __TIB_org_xmlvm_iphone_CFType.vtable, sizeof(__TIB_org_xmlvm_iphone_CFType.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CFURL.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CFURL.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CFURL.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFURL.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CFURL.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CFURL.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFURL.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CFURL.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CFURL.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFURL.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CFURL = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CFURL);
    __TIB_org_xmlvm_iphone_CFURL.clazz = __CLASS_org_xmlvm_iphone_CFURL;
    __TIB_org_xmlvm_iphone_CFURL.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CFURL_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFURL);
    __CLASS_org_xmlvm_iphone_CFURL_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFURL_1ARRAY);
    __CLASS_org_xmlvm_iphone_CFURL_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFURL_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CFURL]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CFURL.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CFURL(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CFURL]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFURL(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFType(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFURL]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CFURL()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFURL)
org_xmlvm_iphone_CFURL* me = (org_xmlvm_iphone_CFURL*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CFURL));
    me->tib = &__TIB_org_xmlvm_iphone_CFURL;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFURL(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CFURL]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CFURL()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CFURL();
    org_xmlvm_iphone_CFURL___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CFURL___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFURL___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CFURL_createFromFileSystemRepresentation___org_xmlvm_iphone_CFAllocator_byte_1ARRAY_byte(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BYTE n3)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFURL)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFURL_createFromFileSystemRepresentation___org_xmlvm_iphone_CFAllocator_byte_1ARRAY_byte]
    if (n1 != JAVA_NULL) {
        XMLVM_NOT_IMPLEMENTED();
    }
    XMLVM_VAR_BYTE_ARRAY(path, n2);
    XMLVM_VAR_BYTE(isDirectory, n3);
    CFURLRef url = CFURLCreateFromFileSystemRepresentation(nil, pathData, pathLength, isDirectory);
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CFURL();
    org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(obj, url);
    return obj;
    //XMLVM_END_WRAPPER
}

