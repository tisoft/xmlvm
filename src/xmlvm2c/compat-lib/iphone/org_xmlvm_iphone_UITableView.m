#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UITableViewCell.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "org_xmlvm_iphone_UITableViewDataSource.h"
#include "org_xmlvm_iphone_UITableViewDelegate.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSIndexPath.h"

#include "org_xmlvm_iphone_UITableView.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITableView __CLASS_org_xmlvm_iphone_UITableView = {
    0, // classInitialized
    "org.xmlvm.iphone.UITableView", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIScrollView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITableView()
{
    __CLASS_org_xmlvm_iphone_UITableView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIScrollView.classInitialized) __INIT_org_xmlvm_iphone_UIScrollView();
    __CLASS_org_xmlvm_iphone_UITableView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITableView.vtable, __CLASS_org_xmlvm_iphone_UIScrollView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIScrollView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UITableView.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setDataSource___org_xmlvm_iphone_UITableViewDataSource;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getTableViewDelegate__;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getDataSource__;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_dequeueReusableCellWithIdentifier___java_lang_String;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[93] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_deleteRowsAtIndexPaths___java_util_ArrayList_boolean;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[94] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_reloadData__;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[95] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_reloadRowsAtIndexPaths___java_util_ArrayList_int;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[96] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[97] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getSeparatorColor__;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[98] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setSeparatorColor___org_xmlvm_iphone_UIColor;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[99] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getSeparatorStyle__;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[100] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setSeparatorStyle___int;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[101] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_isAllowsSelection__;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[102] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setAllowsSelection___boolean;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[103] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_isEditing__;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[104] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setEditing___boolean;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[105] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setEditing___boolean_boolean;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[106] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_getRowHeight__;
    __CLASS_org_xmlvm_iphone_UITableView.vtable[107] = (VTABLE_PTR) &org_xmlvm_iphone_UITableView_setRowHeight___float;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITableView.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITableView.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


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
    if (!__CLASS_org_xmlvm_iphone_UITableView.classInitialized) __INIT_org_xmlvm_iphone_UITableView();
    org_xmlvm_iphone_UITableView* me = (org_xmlvm_iphone_UITableView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableView));
    me->__class = &__CLASS_org_xmlvm_iphone_UITableView;
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
    XMLVM_NOT_IMPLEMENTED();
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

