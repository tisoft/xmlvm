#include "org_xmlvm_iphone_UISearchBar.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UISearchBarDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UISearchBarDelegate __CLASS_org_xmlvm_iphone_UISearchBarDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UISearchBarDelegate", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UISearchBarDelegate()
{
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISearchBarDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UISearchBarDelegate(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISearchBarDelegate()
{
    if (!__CLASS_org_xmlvm_iphone_UISearchBarDelegate.classInitialized) __INIT_org_xmlvm_iphone_UISearchBarDelegate();
    org_xmlvm_iphone_UISearchBarDelegate* me = (org_xmlvm_iphone_UISearchBarDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISearchBarDelegate));
    me->__class = &__CLASS_org_xmlvm_iphone_UISearchBarDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UISearchBarDelegate);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISearchBarDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISearchBarDelegate();
    org_xmlvm_iphone_UISearchBarDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UISearchBarDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

