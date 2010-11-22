#include "org_xmlvm_iphone_UIEvent.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIWindow.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIWindow __CLASS_org_xmlvm_iphone_UIWindow = {
    0, // classInitialized
    "org.xmlvm.iphone.UIWindow", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIKit.h>
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIWindow()
{
    __CLASS_org_xmlvm_iphone_UIWindow.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIWindow.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIWindow;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIWindow.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIWindow.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_makeKeyAndVisible__;
    __CLASS_org_xmlvm_iphone_UIWindow.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_sendEvent___org_xmlvm_iphone_UIEvent;
    __CLASS_org_xmlvm_iphone_UIWindow.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow;
    __CLASS_org_xmlvm_iphone_UIWindow.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow;
    __CLASS_org_xmlvm_iphone_UIWindow.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow;
    __CLASS_org_xmlvm_iphone_UIWindow.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIWindow.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIWindow.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIWindow]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIWindow(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIWindow]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIWindow()
{
    if (!__CLASS_org_xmlvm_iphone_UIWindow.classInitialized) __INIT_org_xmlvm_iphone_UIWindow();
    org_xmlvm_iphone_UIWindow* me = (org_xmlvm_iphone_UIWindow*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIWindow));
    me->__class = &__CLASS_org_xmlvm_iphone_UIWindow;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIWindow]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIWindow()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIWindow();
    org_xmlvm_iphone_UIWindow___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIWindow___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow___INIT___]
	org_xmlvm_iphone_UIWindow* thiz = me;
	thiz->org_xmlvm_iphone_UIView.ocView = [[UIWindow alloc] init];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWindow___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow___INIT____org_xmlvm_iphone_CGRect]
	org_xmlvm_iphone_UIWindow* thiz = me;
	CGRect frame = toCGRect(n1);
	thiz->org_xmlvm_iphone_UIView.ocView = [[UIWindow alloc] initWithFrame: frame];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWindow_makeKeyAndVisible__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow_makeKeyAndVisible__]
	org_xmlvm_iphone_UIWindow* thiz = me;
	UIWindow *ocWindow = thiz->org_xmlvm_iphone_UIView.ocView;
	[ocWindow makeKeyAndVisible];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWindow_sendEvent___org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow_sendEvent___org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow_convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow_convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow_convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow_convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

