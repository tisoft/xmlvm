#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UISearchBarDelegate.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UISearchBar.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UISearchBar __CLASS_org_xmlvm_iphone_UISearchBar = {
    0, // classInitialized
    "org.xmlvm.iphone.UISearchBar", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIControl, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UISearchBar()
{
    __CLASS_org_xmlvm_iphone_UISearchBar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __CLASS_org_xmlvm_iphone_UISearchBar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISearchBar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UISearchBar.vtable, __CLASS_org_xmlvm_iphone_UIControl.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getAutocorrectionType__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getBarStyle__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setBarStyle___int;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getDelegate__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getKeyboardType__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setKeyboardType___int;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getPlaceholder__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getPrompt__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_isShowsCancelButton__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getText__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setText___java_lang_String;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getTintColor__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_isTranslucent__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[93] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setTranslucent___boolean;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[94] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[95] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[96] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[97] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[98] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_isShowsScopeBar__;
    __CLASS_org_xmlvm_iphone_UISearchBar.vtable[99] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UISearchBar.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UISearchBar.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISearchBar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISearchBar()
{
    if (!__CLASS_org_xmlvm_iphone_UISearchBar.classInitialized) __INIT_org_xmlvm_iphone_UISearchBar();
    org_xmlvm_iphone_UISearchBar* me = (org_xmlvm_iphone_UISearchBar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISearchBar));
    me->__class = &__CLASS_org_xmlvm_iphone_UISearchBar;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISearchBar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISearchBar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISearchBar();
    org_xmlvm_iphone_UISearchBar___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISearchBar]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getAutocorrectionType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getAutocorrectionType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getBarStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getBarStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setBarStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getKeyboardType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getKeyboardType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setKeyboardType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setKeyboardType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getPlaceholder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getPlaceholder__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getPrompt__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getPrompt__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsCancelButton__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_isShowsCancelButton__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getText__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getText__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setText___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getTintColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getTintColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isTranslucent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_isTranslucent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setTranslucent___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsScopeBar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_isShowsScopeBar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

