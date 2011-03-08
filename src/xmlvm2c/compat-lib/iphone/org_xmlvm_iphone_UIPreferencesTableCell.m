#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIPreferencesTableCell.h"

#define XMLVM_CURRENT_CLASS_NAME UIPreferencesTableCell
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIPreferencesTableCell

__TIB_DEFINITION_org_xmlvm_iphone_UIPreferencesTableCell __TIB_org_xmlvm_iphone_UIPreferencesTableCell = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIPreferencesTableCell, // classInitializer
    "org.xmlvm.iphone.UIPreferencesTableCell", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIPreferencesTableCell), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTableCell;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTableCell_ARRAYTYPE;

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
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIPreferencesTableCell();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIPreferencesTableCell___INIT___(obj);
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
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setTitle",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTitle",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setEnabled",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setGroupCell",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isGroupCell",
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
        org_xmlvm_iphone_UIPreferencesTableCell_setTitle___java_lang_String(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UIPreferencesTableCell_getTitle__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIPreferencesTableCell_setEnabled___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 3:
        org_xmlvm_iphone_UIPreferencesTableCell_setGroupCell___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 4:
        org_xmlvm_iphone_UIPreferencesTableCell_isGroupCell__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIPreferencesTableCell()
{
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTableCell;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_setTitle___java_lang_String;
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_getTitle__;
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_setEnabled___boolean;
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_setGroupCell___boolean;
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_isGroupCell__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIPreferencesTableCell);
    __TIB_org_xmlvm_iphone_UIPreferencesTableCell.clazz = __CLASS_org_xmlvm_iphone_UIPreferencesTableCell;
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPreferencesTableCell, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPreferencesTableCell]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIPreferencesTableCell(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPreferencesTableCell]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPreferencesTableCell(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTableCell()
{
    if (!__TIB_org_xmlvm_iphone_UIPreferencesTableCell.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTableCell();
    org_xmlvm_iphone_UIPreferencesTableCell* me = (org_xmlvm_iphone_UIPreferencesTableCell*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPreferencesTableCell));
    me->tib = &__TIB_org_xmlvm_iphone_UIPreferencesTableCell;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPreferencesTableCell(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPreferencesTableCell]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTableCell()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPreferencesTableCell();
    org_xmlvm_iphone_UIPreferencesTableCell___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPreferencesTableCell___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTableCell_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPreferencesTableCell_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTableCell_setEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_setEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTableCell_setGroupCell___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_setGroupCell___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIPreferencesTableCell_isGroupCell__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_isGroupCell__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

