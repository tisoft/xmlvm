#include "xmlvm.h"
#include "org_xmlvm_iphone_UIPreferencesTableDataSource.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIPreferencesTable.h"

#define XMLVM_CURRENT_CLASS_NAME UIPreferencesTable
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIPreferencesTable

__TIB_DEFINITION_org_xmlvm_iphone_UIPreferencesTable __TIB_org_xmlvm_iphone_UIPreferencesTable = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIPreferencesTable, // classInitializer
    "org.xmlvm.iphone.UIPreferencesTable", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIPreferencesTable), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTable;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTable_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTable_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTable_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIPreferencesTable();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIPreferencesTable___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setDataSource",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDataSource",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIPreferencesTable_setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UIPreferencesTable_getDataSource__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIPreferencesTable()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIPreferencesTable);
    if (!__TIB_org_xmlvm_iphone_UIPreferencesTable.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIPreferencesTable();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIPreferencesTable);
}

void __INIT_IMPL_org_xmlvm_iphone_UIPreferencesTable()
{
    if (!__TIB_org_xmlvm_iphone_UIPreferencesTable.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIPreferencesTable.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIView();
        __TIB_org_xmlvm_iphone_UIPreferencesTable.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTable;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPreferencesTable.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UIPreferencesTable.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTable_setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource;
        __TIB_org_xmlvm_iphone_UIPreferencesTable.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTable_getDataSource__;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_UIPreferencesTable.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIPreferencesTable.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_UIPreferencesTable.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIPreferencesTable.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIPreferencesTable.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIPreferencesTable.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIPreferencesTable.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIPreferencesTable.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIPreferencesTable.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIPreferencesTable.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIPreferencesTable = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIPreferencesTable);
        __TIB_org_xmlvm_iphone_UIPreferencesTable.clazz = __CLASS_org_xmlvm_iphone_UIPreferencesTable;
        __CLASS_org_xmlvm_iphone_UIPreferencesTable_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPreferencesTable, 3);
        __CLASS_org_xmlvm_iphone_UIPreferencesTable_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPreferencesTable, 2);
        __CLASS_org_xmlvm_iphone_UIPreferencesTable_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPreferencesTable, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPreferencesTable]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIPreferencesTable.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIPreferencesTable(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPreferencesTable]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPreferencesTable(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTable()
{
    if (!__TIB_org_xmlvm_iphone_UIPreferencesTable.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTable();
    org_xmlvm_iphone_UIPreferencesTable* me = (org_xmlvm_iphone_UIPreferencesTable*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPreferencesTable));
    me->tib = &__TIB_org_xmlvm_iphone_UIPreferencesTable;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPreferencesTable(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPreferencesTable]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTable()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIPreferencesTable___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTable___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTable_setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTable_setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPreferencesTable_getDataSource__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTable_getDataSource__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

