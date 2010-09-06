#include "org_xmlvm_iphone_UIApplicationDelegate.h"
#include "org_xmlvm_iphone_UIWindow.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "java_util_List.h"
#include "java_lang_Class.h"

#include "org_xmlvm_iphone_UIApplication.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIApplication __CLASS_org_xmlvm_iphone_UIApplication = {
    0, // classInitialized
    "org.xmlvm.iphone.UIApplication", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIResponder, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIApplication.h>

org_xmlvm_iphone_UIApplicationDelegate *appToRun;
org_xmlvm_iphone_UIApplication *curApp;

@interface UIAppWrap : UIApplication <UIApplicationDelegate> {	
}
- (void) applicationDidFinishLaunching: (UIApplication*) app;
@end


@implementation UIAppWrap

- (void) applicationDidFinishLaunching: (UIApplication*) app
{

	curApp = __NEW_org_xmlvm_iphone_UIApplication();
	org_xmlvm_iphone_UIApplication___INIT___(curApp);
	curApp->org_xmlvm_iphone_UIApplication.ocApp = app;
	
	Func_VOO applicatonDidFinishLaunching = 
		appToRun->__class->vtable[
			XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplicationDelegate_applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication];
    applicatonDidFinishLaunching(appToRun, curApp);
}

@end
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIApplication()
{
    __CLASS_org_xmlvm_iphone_UIApplication.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIResponder.classInitialized) __INIT_org_xmlvm_iphone_UIResponder();
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIApplication.vtable, __CLASS_org_xmlvm_iphone_UIResponder.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIResponder.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_getDelegate__;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_getKeyWindow__;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_getWindows__;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_getStatusBarStyle__;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarStyle___int;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean;
    __CLASS_org_xmlvm_iphone_UIApplication.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIApplication.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIApplication.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIApplication]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIApplication()
{
    if (!__CLASS_org_xmlvm_iphone_UIApplication.classInitialized) __INIT_org_xmlvm_iphone_UIApplication();
    org_xmlvm_iphone_UIApplication* me = (org_xmlvm_iphone_UIApplication*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIApplication));
    me->__class = &__CLASS_org_xmlvm_iphone_UIApplication;
    me->org_xmlvm_iphone_UIApplication.windows_ = (java_util_List*) JAVA_NULL;
    me->org_xmlvm_iphone_UIApplication.keyWindow_ = (org_xmlvm_iphone_UIWindow*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIApplication]
    //XMLVM_END_WRAPPER
    return me;
}

void __DELETE_org_xmlvm_iphone_UIApplication(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIApplication]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication___INIT___]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_sharedApplication__()
{
    if (!__CLASS_org_xmlvm_iphone_UIApplication.classInitialized) __INIT_org_xmlvm_iphone_UIApplication();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_sharedApplication__]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_getDelegate__]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean]
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_getKeyWindow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_getKeyWindow__]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_getWindows__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_getWindows__]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean]
	UIApplication *app = curApp->org_xmlvm_iphone_UIApplication.ocApp;
	[app setStatusBarHidden: n1];
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIApplication_getStatusBarStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_getStatusBarStyle__]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarStyle___int]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean]
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_main___java_lang_String_ARRAYTYPE_java_lang_Class_java_lang_Class(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    if (!__CLASS_org_xmlvm_iphone_UIApplication.classInitialized) __INIT_org_xmlvm_iphone_UIApplication();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_main___java_lang_String_ARRAYTYPE_java_lang_Class_java_lang_Class]
	
	//java_lang_Class_newInstance__[11]
    appToRun = (*(JAVA_OBJECT (*)(JAVA_OBJECT)) ((java_lang_Class*) n3)->__class->vtable[11])(n3);	
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    UIApplicationMain(0 /*argc*/, nil /*argv*/, @"UIAppWrap", @"UIAppWrap");
	[pool release];	

    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_access$000__()
{
    if (!__CLASS_org_xmlvm_iphone_UIApplication.classInitialized) __INIT_org_xmlvm_iphone_UIApplication();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_access$000__]
    //XMLVM_END_WRAPPER
}



#if 0
int main(int argc, char* argv[])
{
    xmlvm_init();
    org_xmlvm_iphone_UIApplication_main___java_lang_String_ARRAYTYPE(JAVA_NULL);
    return 0;
}
#endif

