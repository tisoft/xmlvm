#include "xmlvm.h"

#include "org_xmlvm_iphone_NSIndexPath.h"

#define XMLVM_CURRENT_CLASS_NAME NSIndexPath
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSIndexPath

__TIB_DEFINITION_org_xmlvm_iphone_NSIndexPath __TIB_org_xmlvm_iphone_NSIndexPath = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSIndexPath, // classInitializer
    "org.xmlvm.iphone.NSIndexPath", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSIndexPath), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_iphone_NSIndexPath_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSIndexPath();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSIndexPath___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"indexPathForRow",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSection",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getRow",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSection",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setRow",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_NSIndexPath_getSection__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_NSIndexPath_getRow__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_NSIndexPath_setSection___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 4:
        org_xmlvm_iphone_NSIndexPath_setRow___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSIndexPath()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSIndexPath);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSIndexPath.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSIndexPath.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSIndexPath);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSIndexPath.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSIndexPath.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSIndexPath.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSIndexPath();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSIndexPath()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSIndexPath.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSIndexPath.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSIndexPath.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_getSection__;
    __TIB_org_xmlvm_iphone_NSIndexPath.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_getRow__;
    __TIB_org_xmlvm_iphone_NSIndexPath.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_setSection___int;
    __TIB_org_xmlvm_iphone_NSIndexPath.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_setRow___int;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSIndexPath.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSIndexPath.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSIndexPath.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSIndexPath.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSIndexPath.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSIndexPath.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSIndexPath.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSIndexPath.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSIndexPath.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSIndexPath.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSIndexPath = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSIndexPath);
    __TIB_org_xmlvm_iphone_NSIndexPath.clazz = __CLASS_org_xmlvm_iphone_NSIndexPath;
    __TIB_org_xmlvm_iphone_NSIndexPath.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSIndexPath_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSIndexPath);
    __CLASS_org_xmlvm_iphone_NSIndexPath_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSIndexPath_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSIndexPath_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSIndexPath_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSIndexPath]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSIndexPath.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSIndexPath(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSIndexPath]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSIndexPath()
{
    if (!__TIB_org_xmlvm_iphone_NSIndexPath.classInitialized) __INIT_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath* me = (org_xmlvm_iphone_NSIndexPath*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSIndexPath));
    me->tib = &__TIB_org_xmlvm_iphone_NSIndexPath;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSIndexPath(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSIndexPath]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSIndexPath);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSIndexPath___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSIndexPath.classInitialized) __INIT_org_xmlvm_iphone_NSIndexPath();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSIndexPath_getSection__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_getSection__]
    NSIndexPath* indexPath = ((org_xmlvm_iphone_NSIndexPath*) me)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    return [indexPath section];
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSIndexPath_getRow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_getRow__]
    NSIndexPath* indexPath = ((org_xmlvm_iphone_NSIndexPath*) me)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    return [indexPath row];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSIndexPath_setSection___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_setSection___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSIndexPath_setRow___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_setRow___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

