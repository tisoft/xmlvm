#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSBundle.h"

#define XMLVM_CURRENT_CLASS_NAME NSBundle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSBundle

__TIB_DEFINITION_org_xmlvm_iphone_NSBundle __TIB_org_xmlvm_iphone_NSBundle = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSBundle, // classInitializer
    "org.xmlvm.iphone.NSBundle", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSBundle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSBundle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSBundle_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSBundle_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSBundle_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include "org_xmlvm_iphone_NSString.h"
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSBundle();
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
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"mainBundle",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSBundle;",
    JAVA_NULL,
    JAVA_NULL},
    {"pathForResource",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"pathForResource",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"bundlePath",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"resourcePath",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"localizedStringForKey",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
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
        org_xmlvm_iphone_NSBundle_mainBundle__();
        break;
    case 1:
        org_xmlvm_iphone_NSBundle_pathForResource___java_lang_String_java_lang_String_java_lang_String(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 2:
        org_xmlvm_iphone_NSBundle_pathForResource___java_lang_String_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_NSBundle_bundlePath__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_NSBundle_resourcePath__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_NSBundle_localizedStringForKey___java_lang_String_java_lang_String_java_lang_String(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSBundle()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSBundle);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSBundle.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSBundle.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSBundle);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSBundle.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSBundle.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSBundle.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSBundle();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSBundle()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSBundle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSBundle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSBundle.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSBundle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSBundle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSBundle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSBundle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSBundle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSBundle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSBundle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSBundle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSBundle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSBundle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSBundle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSBundle);
    __TIB_org_xmlvm_iphone_NSBundle.clazz = __CLASS_org_xmlvm_iphone_NSBundle;
    __TIB_org_xmlvm_iphone_NSBundle.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSBundle_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSBundle);
    __CLASS_org_xmlvm_iphone_NSBundle_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSBundle_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSBundle_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSBundle_2ARRAY);
    org_xmlvm_iphone_NSBundle___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSBundle]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSBundle.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSBundle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSBundle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSBundle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSBundle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSBundle()
{
    if (!__TIB_org_xmlvm_iphone_NSBundle.classInitialized) __INIT_org_xmlvm_iphone_NSBundle();
    org_xmlvm_iphone_NSBundle* me = (org_xmlvm_iphone_NSBundle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSBundle));
    me->tib = &__TIB_org_xmlvm_iphone_NSBundle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSBundle(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSBundle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSBundle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSBundle_mainBundle__()
{
    if (!__TIB_org_xmlvm_iphone_NSBundle.classInitialized) __INIT_org_xmlvm_iphone_NSBundle();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSBundle_mainBundle__]
    static JAVA_OBJECT mainBundle = JAVA_NULL;
    if (mainBundle == JAVA_NULL) {
        mainBundle = __NEW_org_xmlvm_iphone_NSBundle();
        org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(mainBundle, [NSBundle mainBundle]);
    }
    return mainBundle;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSBundle_pathForResource___java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSBundle_pathForResource___java_lang_String_java_lang_String_java_lang_String]
    org_xmlvm_iphone_NSBundle* thiz = me;
    NSString* name = toNSString(n1);
    NSString* ext = toNSString(n2);
    NSString* dir = toNSString(n3);
    NSString* path = [((NSBundle*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) pathForResource:name ofType:ext inDirectory:dir];
    JAVA_OBJECT path_ = fromNSString(path);
    [name release];
    [ext release];
    [dir release];
    //[path release];
    return path_;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSBundle_pathForResource___java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSBundle_pathForResource___java_lang_String_java_lang_String]
    org_xmlvm_iphone_NSBundle* thiz = me;
    NSString* path = toNSString(n1);
    NSString* type = toNSString(n2);
    NSString* absolutePath = [((NSBundle*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) pathForResource:path ofType:type];
    [path release];
    [type release];
    JAVA_OBJECT result = fromNSString(absolutePath);
    //[absolutePath release];
    return result;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSBundle_bundlePath__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSBundle_bundlePath__]
    org_xmlvm_iphone_NSBundle* thiz = me;
    NSString* path = [((NSBundle*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) bundlePath];
    JAVA_OBJECT path_ = fromNSString(path);
    //[path release];
    return path_;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSBundle_resourcePath__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSBundle_resourcePath__]
    XMLVM_VAR_THIZ;
    return fromNSString([thiz resourcePath]);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSBundle_localizedStringForKey___java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSBundle_localizedStringForKey___java_lang_String_java_lang_String_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSBundle___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSBundle___CLINIT___]
    //XMLVM_END_WRAPPER
}

