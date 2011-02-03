#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_UIBarButtonItem.h"
#include "org_xmlvm_iphone_UINavigationBar.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UINavigationItem.h"

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationItem __TIB_org_xmlvm_iphone_UINavigationItem = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UINavigationItem, // classInitializer
    "org.xmlvm.iphone.UINavigationItem", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationItem;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationItem_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_String,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UINavigationItem();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UINavigationItem___INIT____java_lang_String(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UINavigationItem()
{
    __TIB_org_xmlvm_iphone_UINavigationItem.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UINavigationItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UINavigationItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UINavigationItem.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_hidesBackButton__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getPrompt__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getTitle__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getTitleView__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UINavigationItem.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UINavigationItem.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UINavigationItem.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationItem.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UINavigationItem.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UINavigationItem.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationItem.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UINavigationItem = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UINavigationItem);
    __TIB_org_xmlvm_iphone_UINavigationItem.clazz = __CLASS_org_xmlvm_iphone_UINavigationItem;
    __CLASS_org_xmlvm_iphone_UINavigationItem_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationItem, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UINavigationItem(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UINavigationItem()
{
    if (!__TIB_org_xmlvm_iphone_UINavigationItem.classInitialized) __INIT_org_xmlvm_iphone_UINavigationItem();
    org_xmlvm_iphone_UINavigationItem* me = (org_xmlvm_iphone_UINavigationItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UINavigationItem));
    me->tib = &__TIB_org_xmlvm_iphone_UINavigationItem;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UINavigationItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UINavigationItem___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem___INIT____java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UINavigationItem_hidesBackButton__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_hidesBackButton__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getPrompt__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getPrompt__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getTitleView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getTitleView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_access$000___org_xmlvm_iphone_UINavigationItem(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UINavigationItem.classInitialized) __INIT_org_xmlvm_iphone_UINavigationItem();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_access$000___org_xmlvm_iphone_UINavigationItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

