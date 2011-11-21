#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_List.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_NSErrorHolder.h"

#include "org_xmlvm_iphone_NSFileManager.h"

#define XMLVM_CURRENT_CLASS_NAME NSFileManager
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSFileManager

__TIB_DEFINITION_org_xmlvm_iphone_NSFileManager __TIB_org_xmlvm_iphone_NSFileManager = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSFileManager, // classInitializer
    "org.xmlvm.iphone.NSFileManager", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSFileManager), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "org_xmlvm_iphone_NSString.h"
#include "xmlvm-util.h"

void org_xmlvm_iphone_NSFileManager_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [NSFileManager class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSFileManager();
        org_xmlvm_iphone_NSFileManager_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSFileManager();
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
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_boolean,
    &__CLASS_java_util_Map,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_NSErrorHolder,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"defaultManager",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"fileExistsAtPath",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"createDirectoryAtPath",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"contentsOfDirectoryAtPath",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSFileManager_defaultManager__();
        break;
    case 1:
        org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_, argsArray[2]);
        break;
    case 3:
        org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSFileManager()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSFileManager);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSFileManager.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSFileManager.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSFileManager);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSFileManager.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSFileManager.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSFileManager.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSFileManager();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSFileManager()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSFileManager.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSFileManager;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSFileManager.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSFileManager.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSFileManager.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSFileManager.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSFileManager.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSFileManager.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSFileManager.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSFileManager.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSFileManager.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSFileManager.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSFileManager.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSFileManager = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSFileManager);
    __TIB_org_xmlvm_iphone_NSFileManager.clazz = __CLASS_org_xmlvm_iphone_NSFileManager;
    __TIB_org_xmlvm_iphone_NSFileManager.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSFileManager_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSFileManager);
    __CLASS_org_xmlvm_iphone_NSFileManager_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSFileManager_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSFileManager_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSFileManager_2ARRAY);
    org_xmlvm_iphone_NSFileManager___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSFileManager]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSFileManager.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSFileManager(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSFileManager]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSFileManager(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSFileManager]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSFileManager()
{
    if (!__TIB_org_xmlvm_iphone_NSFileManager.classInitialized) __INIT_org_xmlvm_iphone_NSFileManager();
    org_xmlvm_iphone_NSFileManager* me = (org_xmlvm_iphone_NSFileManager*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSFileManager));
    me->tib = &__TIB_org_xmlvm_iphone_NSFileManager;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSFileManager(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSFileManager]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSFileManager()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSFileManager_defaultManager__()
{
    if (!__TIB_org_xmlvm_iphone_NSFileManager.classInitialized) __INIT_org_xmlvm_iphone_NSFileManager();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager_defaultManager__]
    return xmlvm_get_associated_c_object([NSFileManager defaultManager]);
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder]
    org_xmlvm_iphone_NSFileManager* thiz = me;
    NSString* path = toNSString(n1);
    //TODO do something with n2 (error)
    NSArray* pathList = [((NSFileManager*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) contentsOfDirectoryAtPath:path error:NULL];
    [path release];
    JAVA_OBJECT pathList_ = XMLVMUtil_NEW_ArrayList();
    for (int i = 0; i < [pathList count]; i++) {
        NSString* pathElem = [pathList objectAtIndex:i];
        XMLVMUtil_ArrayList_add(pathList_, fromNSString(pathElem));
    }
    return pathList_;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSFileManager___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSFileManager___CLINIT___]
    //XMLVM_END_WRAPPER
}

