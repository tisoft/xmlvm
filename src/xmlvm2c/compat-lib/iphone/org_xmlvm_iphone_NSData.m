#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSString.h"
#include "org_xmlvm_iphone_NSURL.h"

#include "org_xmlvm_iphone_NSData.h"

#define XMLVM_CURRENT_CLASS_NAME NSData
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSData

__TIB_DEFINITION_org_xmlvm_iphone_NSData __TIB_org_xmlvm_iphone_NSData = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSData, // classInitializer
    "org.xmlvm.iphone.NSData", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSData), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "java_io_InputStream.h"
#include "org_xmlvm_iphone_NSString.h"


void org_xmlvm_iphone_NSData_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    /*
     * Sometimes we get the internal class __NSCFData. Since one is not
     * supposed to use this class, we do a string-compare. It will also be mapped
     * to a NSData.
     */
    NSString* name = NSStringFromClass([obj class]);
    
    if (([obj class] == [NSData class]) || ([name isEqual:@"__NSCFData"])) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSData();
        org_xmlvm_iphone_NSData_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}


//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_byte_1ARRAY,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSData();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSData___INIT____byte_1ARRAY(obj, argsArray[0]);
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
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"dataWithContentsOfFile",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dataWithContentsOfURL",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dataWithBytes",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"writeToFile",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"length",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBytes",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSData_dataWithContentsOfFile___java_lang_String(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSData_dataWithContentsOfURL___org_xmlvm_iphone_NSURL(argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_NSData_dataWithBytes___byte_1ARRAY(argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 4:
        org_xmlvm_iphone_NSData_length__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_NSData_getBytes__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSData()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSData);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSData.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSData.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSData);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSData.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSData.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSData.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSData();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSData()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSData.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSData;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSData.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSData.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSData.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSData.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSData.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSData.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSData.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSData.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSData.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSData.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSData.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSData = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSData);
    __TIB_org_xmlvm_iphone_NSData.clazz = __CLASS_org_xmlvm_iphone_NSData;
    __TIB_org_xmlvm_iphone_NSData.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSData_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSData);
    __CLASS_org_xmlvm_iphone_NSData_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSData_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSData_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSData_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSData]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSData.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSData(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSData]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSData(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSData]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSData()
{
    if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSData* me = (org_xmlvm_iphone_NSData*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSData));
    me->tib = &__TIB_org_xmlvm_iphone_NSData;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSData(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSData]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSData()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_dataWithContentsOfFile___java_lang_String]
    NSString* path = toNSString(n1);
    NSData* data = [[NSData alloc] initWithContentsOfFile:path];
    [path release];
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSData_INTERNAL_CONSTRUCTOR(obj, data);
    return obj;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithContentsOfURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_dataWithContentsOfURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithBytes___byte_1ARRAY(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_dataWithBytes___byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSData___INIT____byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData___INIT____byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSData_length__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_length__]
    XMLVM_VAR_THIZ;
    return [thiz length];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_getBytes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_getBytes__]
    XMLVM_VAR_THIZ;
    return XMLVMArray_createSingleDimensionWithData(__CLASS_byte, [thiz length], [thiz bytes]);
    //XMLVM_END_WRAPPER
}

