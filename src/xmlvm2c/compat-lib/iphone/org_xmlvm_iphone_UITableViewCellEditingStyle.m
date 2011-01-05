
#include "org_xmlvm_iphone_UITableViewCellEditingStyle.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewCellEditingStyle __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UITableViewCellEditingStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None,
    "",
    JAVA_NULL},
    {"Delete",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete,
    "",
    JAVA_NULL},
    {"Insert",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle()
{
    __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellEditingStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None = 0;
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete = 1;
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert = 2;

    __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle);
    __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.clazz = __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCellEditingStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITableViewCellEditingStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCellEditingStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCellEditingStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    org_xmlvm_iphone_UITableViewCellEditingStyle* me = (org_xmlvm_iphone_UITableViewCellEditingStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCellEditingStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCellEditingStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellEditingStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewCellEditingStyle();
    org_xmlvm_iphone_UITableViewCellEditingStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None;
}

void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_Delete()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete;
}

void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_Delete(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_Insert()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert;
}

void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_Insert(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert = v;
}

void org_xmlvm_iphone_UITableViewCellEditingStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCellEditingStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

