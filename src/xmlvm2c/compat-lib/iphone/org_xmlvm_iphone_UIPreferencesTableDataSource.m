#include "xmlvm.h"
#include "org_xmlvm_iphone_UIPreferencesTable.h"
#include "org_xmlvm_iphone_UIPreferencesTableCell.h"

#include "org_xmlvm_iphone_UIPreferencesTableDataSource.h"

#define XMLVM_CURRENT_CLASS_NAME UIPreferencesTableDataSource
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIPreferencesTableDataSource

__TIB_DEFINITION_org_xmlvm_iphone_UIPreferencesTableDataSource __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIPreferencesTableDataSource, // classInitializer
    "org.xmlvm.iphone.UIPreferencesTableDataSource", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIPreferencesTableDataSource), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIPreferencesTableDataSource();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIPreferencesTableDataSource___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPreferencesTable,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPreferencesTable,
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPreferencesTable,
    &__CLASS_int,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPreferencesTable,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_float,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPreferencesTable,
    &__CLASS_int,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPreferencesTable,
    &__CLASS_int,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"numberOfGroupsInPreferencesTable",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPreferencesTable;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"numberOfRowsInGroup",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPreferencesTable;I)I",
    JAVA_NULL,
    JAVA_NULL},
    {"cellForGroup",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPreferencesTable;I)Lorg/xmlvm/iphone/UIPreferencesTableCell;",
    JAVA_NULL,
    JAVA_NULL},
    {"heightForRow",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPreferencesTable;IIF)F",
    JAVA_NULL,
    JAVA_NULL},
    {"isLabelGroup",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPreferencesTable;I)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"cellForRow",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPreferencesTable;II)Lorg/xmlvm/iphone/UIPreferencesTableCell;",
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
        //conversion.i = (JAVA_INT) org_xmlvm_iphone_UIPreferencesTableDataSource_numberOfGroupsInPreferencesTable___org_xmlvm_iphone_UIPreferencesTable(receiver, argsArray[0]);
        XMLVM_INTERNAL_ERROR();
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 1:
        //conversion.i = (JAVA_INT) org_xmlvm_iphone_UIPreferencesTableDataSource_numberOfRowsInGroup___org_xmlvm_iphone_UIPreferencesTable_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        XMLVM_INTERNAL_ERROR();
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 2:
        //result = (JAVA_OBJECT) org_xmlvm_iphone_UIPreferencesTableDataSource_cellForGroup___org_xmlvm_iphone_UIPreferencesTable_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        XMLVM_INTERNAL_ERROR();
        break;
    case 3:
        //conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_UIPreferencesTableDataSource_heightForRow___org_xmlvm_iphone_UIPreferencesTable_int_int_float(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
        XMLVM_INTERNAL_ERROR();
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 4:
        //conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIPreferencesTableDataSource_isLabelGroup___org_xmlvm_iphone_UIPreferencesTable_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        XMLVM_INTERNAL_ERROR();
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 5:
        //result = (JAVA_OBJECT) org_xmlvm_iphone_UIPreferencesTableDataSource_cellForRow___org_xmlvm_iphone_UIPreferencesTable_int_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_);
        XMLVM_INTERNAL_ERROR();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIPreferencesTableDataSource()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIPreferencesTableDataSource);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIPreferencesTableDataSource);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIPreferencesTableDataSource")
        __INIT_IMPL_org_xmlvm_iphone_UIPreferencesTableDataSource();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIPreferencesTableDataSource()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTableDataSource;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIPreferencesTableDataSource);
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.clazz = __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource;
    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource);
    __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPreferencesTableDataSource]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIPreferencesTableDataSource.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIPreferencesTableDataSource(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPreferencesTableDataSource]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPreferencesTableDataSource(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPreferencesTableDataSource]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTableDataSource()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIPreferencesTableDataSource)
org_xmlvm_iphone_UIPreferencesTableDataSource* me = (org_xmlvm_iphone_UIPreferencesTableDataSource*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPreferencesTableDataSource));
    me->tib = &__TIB_org_xmlvm_iphone_UIPreferencesTableDataSource;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPreferencesTableDataSource(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPreferencesTableDataSource]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTableDataSource()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPreferencesTableDataSource();
    org_xmlvm_iphone_UIPreferencesTableDataSource___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPreferencesTableDataSource___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableDataSource___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

