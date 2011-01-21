#include "xmlvm.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "org_xmlvm_iphone_UITableViewDataSource.h"
#include "org_xmlvm_iphone_UITableViewDelegate.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSIndexPath.h"

#include "org_xmlvm_iphone_UITableView.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITableView __TIB_org_xmlvm_iphone_UITableView = {
    0, // classInitialized
    "org.xmlvm.iphone.UITableView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIScrollView, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableView_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIKit.h>
#include "org_xmlvm_iphone_UIScrollView.h"
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __constructor2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
    &__CLASS_int,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor2_arg_types[0],
    sizeof(__constructor2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITableView___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect_int(obj, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UITableView()
{
    __TIB_org_xmlvm_iphone_UITableView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIScrollView.classInitialized) __INIT_org_xmlvm_iphone_UIScrollView();
    __TIB_org_xmlvm_iphone_UITableView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableView.vtable, __TIB_org_xmlvm_iphone_UIScrollView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIScrollView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITableView.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setDataSource___org_xmlvm_iphone_UITableViewDataSource;
    __TIB_org_xmlvm_iphone_UITableView.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate;
    __TIB_org_xmlvm_iphone_UITableView.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getTableViewDelegate__;
    __TIB_org_xmlvm_iphone_UITableView.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getDataSource__;
    __TIB_org_xmlvm_iphone_UITableView.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_dequeueReusableCellWithIdentifier___java_lang_String;
    __TIB_org_xmlvm_iphone_UITableView.vtable[93] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_deleteRowsAtIndexPaths___java_util_ArrayList_boolean;
    __TIB_org_xmlvm_iphone_UITableView.vtable[94] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_reloadData__;
    __TIB_org_xmlvm_iphone_UITableView.vtable[95] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_reloadRowsAtIndexPaths___java_util_ArrayList_int;
    __TIB_org_xmlvm_iphone_UITableView.vtable[96] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean;
    __TIB_org_xmlvm_iphone_UITableView.vtable[97] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getSeparatorColor__;
    __TIB_org_xmlvm_iphone_UITableView.vtable[98] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setSeparatorColor___org_xmlvm_iphone_UIColor;
    __TIB_org_xmlvm_iphone_UITableView.vtable[99] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getSeparatorStyle__;
    __TIB_org_xmlvm_iphone_UITableView.vtable[100] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setSeparatorStyle___int;
    __TIB_org_xmlvm_iphone_UITableView.vtable[101] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_isAllowsSelection__;
    __TIB_org_xmlvm_iphone_UITableView.vtable[102] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setAllowsSelection___boolean;
    __TIB_org_xmlvm_iphone_UITableView.vtable[103] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_isEditing__;
    __TIB_org_xmlvm_iphone_UITableView.vtable[104] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setEditing___boolean;
    __TIB_org_xmlvm_iphone_UITableView.vtable[105] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setEditing___boolean_boolean;
    __TIB_org_xmlvm_iphone_UITableView.vtable[106] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getRowHeight__;
    __TIB_org_xmlvm_iphone_UITableView.vtable[107] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setRowHeight___float;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITableView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITableView.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableView.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableView.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableView);
    __TIB_org_xmlvm_iphone_UITableView.clazz = __CLASS_org_xmlvm_iphone_UITableView;
    __CLASS_org_xmlvm_iphone_UITableView_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableView, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITableView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableView()
{
    if (!__TIB_org_xmlvm_iphone_UITableView.classInitialized) __INIT_org_xmlvm_iphone_UITableView();
    org_xmlvm_iphone_UITableView* me = (org_xmlvm_iphone_UITableView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableView));
    me->tib = &__TIB_org_xmlvm_iphone_UITableView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableView();
    org_xmlvm_iphone_UITableView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITableView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect_int]
    UITableView* obj = [[UITableView alloc] initWithFrame:toCGRect(n1) style:n2];
    org_xmlvm_iphone_UIScrollView_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setDataSource___org_xmlvm_iphone_UITableViewDataSource(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setDataSource___org_xmlvm_iphone_UITableViewDataSource]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_getTableViewDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getTableViewDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_getDataSource__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getDataSource__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_dequeueReusableCellWithIdentifier___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_dequeueReusableCellWithIdentifier___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_deleteRowsAtIndexPaths___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_deleteRowsAtIndexPaths___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_reloadData__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_reloadData__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_reloadRowsAtIndexPaths___java_util_ArrayList_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_reloadRowsAtIndexPaths___java_util_ArrayList_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_getSeparatorColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getSeparatorColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setSeparatorColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setSeparatorColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITableView_getSeparatorStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getSeparatorStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setSeparatorStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setSeparatorStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableView_isAllowsSelection__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_isAllowsSelection__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setAllowsSelection___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setAllowsSelection___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableView_isEditing__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_isEditing__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setEditing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setEditing___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setEditing___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setEditing___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UITableView_getRowHeight__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getRowHeight__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setRowHeight___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setRowHeight___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

