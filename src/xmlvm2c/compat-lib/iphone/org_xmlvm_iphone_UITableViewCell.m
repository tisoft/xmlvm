#include "org_xmlvm_iphone_UIImageView.h"
#include "org_xmlvm_iphone_UILabel.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITableViewCell.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITableViewCell __CLASS_org_xmlvm_iphone_UITableViewCell = {
    0, // classInitialized
    "org.xmlvm.iphone.UITableViewCell", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITableViewCell()
{
    __CLASS_org_xmlvm_iphone_UITableViewCell.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UITableViewCell.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCell;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITableViewCell.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setSelected___boolean;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_isSelected__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getEditingStyle__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getContentView__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getBackgroundView__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getTextLabel__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getImageView__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getAccessoryView__;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UITableViewCell.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITableViewCell.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITableViewCell.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCell]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITableViewCell(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCell]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCell()
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCell.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCell();
    org_xmlvm_iphone_UITableViewCell* me = (org_xmlvm_iphone_UITableViewCell*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCell));
    me->__class = &__CLASS_org_xmlvm_iphone_UITableViewCell;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCell]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCell()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewCell();
    org_xmlvm_iphone_UITableViewCell___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITableViewCell___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell___INIT____int_java_lang_String(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell___INIT____int_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setSelected___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setSelected___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableViewCell_isSelected__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_isSelected__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITableViewCell_getEditingStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getEditingStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getContentView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getContentView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getBackgroundView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getBackgroundView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getTextLabel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getTextLabel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getImageView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getImageView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getAccessoryView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getAccessoryView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

