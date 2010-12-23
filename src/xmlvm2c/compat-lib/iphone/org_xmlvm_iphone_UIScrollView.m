#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_UIScrollViewDelegate.h"
#include "org_xmlvm_iphone_CGSize.h"

#include "org_xmlvm_iphone_UIScrollView.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIScrollView __TIB_org_xmlvm_iphone_UIScrollView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIScrollView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIScrollView()
{
    __TIB_org_xmlvm_iphone_UIScrollView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIScrollView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIScrollView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIScrollView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setContentOffset___org_xmlvm_iphone_CGPoint;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setContentOffset___org_xmlvm_iphone_CGPoint_boolean;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_getContentOffset__;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setScrollEnabled___boolean;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isScrollEnabled__;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isPagingEnabled__;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setPagingEnabled___boolean;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_getContentSize__;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setContentSize___org_xmlvm_iphone_CGSize;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_getDelegate__;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setDelegate___org_xmlvm_iphone_UIScrollViewDelegate;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isScrollsToTop__;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setScrollsToTop___boolean;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isShowsHorizontalScrollIndicator__;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setShowsHorizontalScrollIndicator___boolean;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isShowsVerticalScrollIndicator__;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setShowsVerticalScrollIndicator___boolean;
    __TIB_org_xmlvm_iphone_UIScrollView.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_scrollRectToVisible___org_xmlvm_iphone_CGRect_boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIScrollView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIScrollView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIScrollView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIScrollView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIScrollView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIScrollView()
{
    if (!__TIB_org_xmlvm_iphone_UIScrollView.classInitialized) __INIT_org_xmlvm_iphone_UIScrollView();
    org_xmlvm_iphone_UIScrollView* me = (org_xmlvm_iphone_UIScrollView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIScrollView));
    me->tib = &__TIB_org_xmlvm_iphone_UIScrollView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIScrollView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIScrollView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIScrollView();
    org_xmlvm_iphone_UIScrollView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIScrollView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setContentOffset___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setContentOffset___org_xmlvm_iphone_CGPoint]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setContentOffset___org_xmlvm_iphone_CGPoint_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setContentOffset___org_xmlvm_iphone_CGPoint_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIScrollView_getContentOffset__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_getContentOffset__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setScrollEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setScrollEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIScrollView_isScrollEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_isScrollEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIScrollView_isPagingEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_isPagingEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setPagingEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setPagingEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIScrollView_getContentSize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_getContentSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setContentSize___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setContentSize___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIScrollView_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setDelegate___org_xmlvm_iphone_UIScrollViewDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setDelegate___org_xmlvm_iphone_UIScrollViewDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIScrollView_isScrollsToTop__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_isScrollsToTop__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setScrollsToTop___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setScrollsToTop___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIScrollView_isShowsHorizontalScrollIndicator__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_isShowsHorizontalScrollIndicator__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setShowsHorizontalScrollIndicator___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setShowsHorizontalScrollIndicator___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIScrollView_isShowsVerticalScrollIndicator__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_isShowsVerticalScrollIndicator__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_setShowsVerticalScrollIndicator___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_setShowsVerticalScrollIndicator___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView_scrollRectToVisible___org_xmlvm_iphone_CGRect_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView_scrollRectToVisible___org_xmlvm_iphone_CGRect_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

