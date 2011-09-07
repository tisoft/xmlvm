#include "xmlvm.h"
#include "org_xmlvm_iphone_CGDataProvider.h"

#include "org_xmlvm_iphone_CGFont.h"

#define XMLVM_CURRENT_CLASS_NAME CGFont
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGFont

__TIB_DEFINITION_org_xmlvm_iphone_CGFont __TIB_org_xmlvm_iphone_CGFont = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGFont, // classInitializer
    "org.xmlvm.iphone.CGFont", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CGFont), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGFont();
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
    &__CLASS_org_xmlvm_iphone_CGDataProvider,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"createFromDataProider",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getAscent",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDescent",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getUnitsPerEm",
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
        org_xmlvm_iphone_CGFont_createFromDataProider___org_xmlvm_iphone_CGDataProvider(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_CGFont_getAscent__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_CGFont_getDescent__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_CGFont_getUnitsPerEm__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGFont()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGFont);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGFont.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGFont.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGFont);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGFont.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGFont.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGFont.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CGFont();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGFont()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CGFont.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGFont;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGFont.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGFont.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGFont.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CGFont.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGFont.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGFont.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGFont.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGFont.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGFont.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGFont.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGFont.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGFont = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGFont);
    __TIB_org_xmlvm_iphone_CGFont.clazz = __CLASS_org_xmlvm_iphone_CGFont;
    __TIB_org_xmlvm_iphone_CGFont.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGFont_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGFont);
    __CLASS_org_xmlvm_iphone_CGFont_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGFont_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGFont_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGFont_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGFont]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGFont.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGFont(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGFont]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGFont(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGFont]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGFont()
{
    if (!__TIB_org_xmlvm_iphone_CGFont.classInitialized) __INIT_org_xmlvm_iphone_CGFont();
    org_xmlvm_iphone_CGFont* me = (org_xmlvm_iphone_CGFont*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGFont));
    me->tib = &__TIB_org_xmlvm_iphone_CGFont;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGFont(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGFont]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGFont()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGFont_createFromDataProider___org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_CGFont.classInitialized) __INIT_org_xmlvm_iphone_CGFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGFont_createFromDataProider___org_xmlvm_iphone_CGDataProvider]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CGFont_getAscent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGFont_getAscent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CGFont_getDescent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGFont_getDescent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CGFont_getUnitsPerEm__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGFont_getUnitsPerEm__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

