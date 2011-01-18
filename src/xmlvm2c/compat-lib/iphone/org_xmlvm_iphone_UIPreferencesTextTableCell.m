#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIPreferencesTextTableCell.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIPreferencesTextTableCell __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell = {
    0, // classInitialized
    "org.xmlvm.iphone.UIPreferencesTextTableCell", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIPreferencesTableCell, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTextTableCell;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTextTableCell_ARRAYTYPE;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIPreferencesTextTableCell();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIPreferencesTextTableCell___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIPreferencesTextTableCell()
{
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIPreferencesTableCell.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTableCell();
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTextTableCell;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.vtable, __TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable, sizeof(__TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTextTableCell_setValue___java_lang_String;
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTextTableCell_getValue__;
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTextTableCell_xmlvmKeyTyped___char;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIPreferencesTextTableCell = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIPreferencesTextTableCell);
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.clazz = __CLASS_org_xmlvm_iphone_UIPreferencesTextTableCell;
    __CLASS_org_xmlvm_iphone_UIPreferencesTextTableCell_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPreferencesTextTableCell, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPreferencesTextTableCell]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIPreferencesTextTableCell(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPreferencesTextTableCell]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTextTableCell()
{
    if (!__TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTextTableCell();
    org_xmlvm_iphone_UIPreferencesTextTableCell* me = (org_xmlvm_iphone_UIPreferencesTextTableCell*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPreferencesTextTableCell));
    me->tib = &__TIB_org_xmlvm_iphone_UIPreferencesTextTableCell;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPreferencesTextTableCell]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTextTableCell()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPreferencesTextTableCell();
    org_xmlvm_iphone_UIPreferencesTextTableCell___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPreferencesTextTableCell___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTextTableCell___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTextTableCell_setValue___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTextTableCell_setValue___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPreferencesTextTableCell_getValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTextTableCell_getValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTextTableCell_xmlvmKeyTyped___char(JAVA_OBJECT me, JAVA_CHAR n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTextTableCell_xmlvmKeyTyped___char]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

