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
    __INIT_org_xmlvm_iphone_UITableView, // classInitializer
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

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableViewDataSource,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableViewDelegate,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_util_ArrayList,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_java_util_ArrayList,
    &__CLASS_int,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method15_arg_types[] = {
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_boolean,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_float,
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
    {"setDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTableViewDelegate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDataSource",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dequeueReusableCellWithIdentifier",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"deleteRowsAtIndexPaths",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"reloadData",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"reloadRowsAtIndexPaths",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"deselectRowAtIndexPath",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSeparatorColor",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSeparatorColor",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSeparatorStyle",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSeparatorStyle",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isAllowsSelection",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAllowsSelection",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isEditing",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setEditing",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setEditing",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getRowHeight",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setRowHeight",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITableView_setDataSource___org_xmlvm_iphone_UITableViewDataSource(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UITableView_getTableViewDelegate__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UITableView_getDataSource__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UITableView_dequeueReusableCellWithIdentifier___java_lang_String(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UITableView_deleteRowsAtIndexPaths___java_util_ArrayList_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 6:
        org_xmlvm_iphone_UITableView_reloadData__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UITableView_reloadRowsAtIndexPaths___java_util_ArrayList_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 8:
        org_xmlvm_iphone_UITableView_deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 9:
        org_xmlvm_iphone_UITableView_getSeparatorColor__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UITableView_setSeparatorColor___org_xmlvm_iphone_UIColor(receiver, argsArray[0]);
        break;
    case 11:
        org_xmlvm_iphone_UITableView_getSeparatorStyle__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UITableView_setSeparatorStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 13:
        org_xmlvm_iphone_UITableView_isAllowsSelection__(receiver);
        break;
    case 14:
        org_xmlvm_iphone_UITableView_setAllowsSelection___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 15:
        org_xmlvm_iphone_UITableView_isEditing__(receiver);
        break;
    case 16:
        org_xmlvm_iphone_UITableView_setEditing___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 17:
        org_xmlvm_iphone_UITableView_setEditing___boolean_boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 18:
        org_xmlvm_iphone_UITableView_getRowHeight__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_UITableView_setRowHeight___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
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
    __TIB_org_xmlvm_iphone_UITableView.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITableView.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableView.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
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
    ((org_xmlvm_iphone_UITableView*) me)->fields.org_xmlvm_iphone_UITableView.dataSource_ = n1;
    UITableView* tableView = (UITableView*) ((org_xmlvm_iphone_UITableView*) me)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    UITableViewDataSourceWrapper* dataSource = ((org_xmlvm_iphone_UITableViewDataSource*) n1)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    dataSource->tableView_ = me;
    tableView.dataSource = dataSource;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate]
    ((org_xmlvm_iphone_UITableView*) me)->fields.org_xmlvm_iphone_UITableView.delegate_ = n1;
    UITableView* tableView = (UITableView*) ((org_xmlvm_iphone_UITableView*) me)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    UITableViewDelegateWrapper* delegate = ((org_xmlvm_iphone_UITableViewDelegate*) n1)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    delegate->tableView_ = me;
    tableView.delegate = delegate;
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

