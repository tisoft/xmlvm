#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIWindow.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIWindow __TIB_org_xmlvm_iphone_UIWindow = {
    0, // classInitialized
    "org.xmlvm.iphone.UIWindow", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWindow;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWindow_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIKit.h>
#include "xmlvm-util.h"
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIWindow()
{
    __TIB_org_xmlvm_iphone_UIWindow.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIWindow.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIWindow;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIWindow.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIWindow.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_makeKeyAndVisible__;
    __TIB_org_xmlvm_iphone_UIWindow.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_sendEvent___org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIWindow.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow;
    __TIB_org_xmlvm_iphone_UIWindow.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow;
    __TIB_org_xmlvm_iphone_UIWindow.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow;
    __TIB_org_xmlvm_iphone_UIWindow.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIWindow_convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIWindow.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIWindow.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIWindow.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWindow.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIWindow = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UIWindow);
    __TIB_org_xmlvm_iphone_UIWindow.clazz = __CLASS_org_xmlvm_iphone_UIWindow;

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
    if (!__TIB_org_xmlvm_iphone_UIWindow.classInitialized) __INIT_org_xmlvm_iphone_UIWindow();
    org_xmlvm_iphone_UIWindow* me = (org_xmlvm_iphone_UIWindow*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIWindow));
    me->tib = &__TIB_org_xmlvm_iphone_UIWindow;
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
    UIWindow* obj = [[UIWindow alloc] init];
    org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWindow___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow___INIT____org_xmlvm_iphone_CGRect]
	CGRect frame = toCGRect(n1);
    UIWindow* obj = [[UIWindow alloc] initWithFrame:frame];
    org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWindow_makeKeyAndVisible__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWindow_makeKeyAndVisible__]
	org_xmlvm_iphone_UIWindow* thiz = me;
	UIWindow *ocWindow = thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
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

