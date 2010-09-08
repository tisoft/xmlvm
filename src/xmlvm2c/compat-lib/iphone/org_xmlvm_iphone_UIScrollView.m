#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_UIScrollViewDelegate.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIScrollView.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIScrollView __CLASS_org_xmlvm_iphone_UIScrollView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIScrollView", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIScrollView()
{
    __CLASS_org_xmlvm_iphone_UIScrollView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIScrollView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIScrollView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIScrollView.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setContentOffset___org_xmlvm_iphone_CGPoint;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setContentOffset___org_xmlvm_iphone_CGPoint_boolean;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_getContentOffset__;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setScrollEnabled___boolean;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isScrollEnabled__;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isPagingEnabled__;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setPagingEnabled___boolean;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_getContentSize__;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setContentSize___org_xmlvm_iphone_CGSize;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_getDelegate__;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setDelegate___org_xmlvm_iphone_UIScrollViewDelegate;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isScrollsToTop__;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setScrollsToTop___boolean;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isShowsHorizontalScrollIndicator__;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setShowsHorizontalScrollIndicator___boolean;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_isShowsVerticalScrollIndicator__;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_setShowsVerticalScrollIndicator___boolean;
    __CLASS_org_xmlvm_iphone_UIScrollView.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UIScrollView_scrollRectToVisible___org_xmlvm_iphone_CGRect_boolean;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIScrollView.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIScrollView.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIScrollView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIScrollView()
{
    if (!__CLASS_org_xmlvm_iphone_UIScrollView.classInitialized) __INIT_org_xmlvm_iphone_UIScrollView();
    org_xmlvm_iphone_UIScrollView* me = (org_xmlvm_iphone_UIScrollView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIScrollView));
    me->__class = &__CLASS_org_xmlvm_iphone_UIScrollView;
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

void __DELETE_org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIScrollView]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollView___INIT___]
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

