#include "xmlvm.h"
#include "org_xmlvm_iphone_UIApplicationDelegate.h"
#include "org_xmlvm_iphone_UIWindow.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "java_lang_Class.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIApplication.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIApplication __TIB_org_xmlvm_iphone_UIApplication = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIApplication, // classInitializer
    "org.xmlvm.iphone.UIApplication", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIResponder, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplication;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplication_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIApplication.h>

#import "java_lang_Class.h"

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
	curApp->fields.org_xmlvm_iphone_UIApplication.ocApp = app;
	
	Func_VOO applicatonDidFinishLaunching = 
		appToRun->tib->vtable[
			XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplicationDelegate_applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication];
    applicatonDidFinishLaunching(appToRun, curApp);
}

@end

void org_xmlvm_iphone_UIApplication_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_UIResponder_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
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
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIApplication();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIApplication___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplicationDelegate,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIWindow,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_boolean,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_int,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_java_lang_String_ARRAYTYPE,
    &__CLASS_java_lang_Class,
    &__CLASS_java_lang_Class,
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"sharedApplication",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setIdleTimerDisabled",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isIdleTimerDisabled",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setKeyWindow",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getKeyWindow",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getWindows",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setStatusBarOrientation",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setStatusBarHidden",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setStatusBarHidden",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getStatusBarStyle",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setStatusBarStyle",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setStatusBarStyle",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isNetworkActivityIndicatorVisible",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setNetworkActivityIndicatorVisible",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"openURL",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"main",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"access$000",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIApplication_sharedApplication__();
        break;
    case 1:
        org_xmlvm_iphone_UIApplication_getDelegate__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 4:
        org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UIApplication_getKeyWindow__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UIApplication_getWindows__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 9:
        org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 10:
        org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean_boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 11:
        org_xmlvm_iphone_UIApplication_getStatusBarStyle__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UIApplication_setStatusBarStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 13:
        org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 14:
        org_xmlvm_iphone_UIApplication_isNetworkActivityIndicatorVisible__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_UIApplication_setNetworkActivityIndicatorVisible___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 16:
        org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL(receiver, argsArray[0]);
        break;
    case 17:
        org_xmlvm_iphone_UIApplication_main___java_lang_String_ARRAYTYPE_java_lang_Class_java_lang_Class(argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 18:
        org_xmlvm_iphone_UIApplication_access$000__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIApplication()
{
    __TIB_org_xmlvm_iphone_UIApplication.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIResponder.classInitialized) __INIT_org_xmlvm_iphone_UIResponder();
    __TIB_org_xmlvm_iphone_UIApplication.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIApplication;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIApplication.vtable, __TIB_org_xmlvm_iphone_UIResponder.vtable, sizeof(__TIB_org_xmlvm_iphone_UIResponder.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIApplication.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_getDelegate__;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_getKeyWindow__;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_getWindows__;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean_boolean;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_getStatusBarStyle__;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarStyle___int;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[34] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_isNetworkActivityIndicatorVisible__;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[35] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_setNetworkActivityIndicatorVisible___boolean;
    __TIB_org_xmlvm_iphone_UIApplication.vtable[36] = (VTABLE_PTR) &org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIApplication.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIApplication.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIApplication.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplication.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIApplication.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIApplication.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplication.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIApplication.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIApplication.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplication.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIApplication = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIApplication);
    __TIB_org_xmlvm_iphone_UIApplication.clazz = __CLASS_org_xmlvm_iphone_UIApplication;
    __CLASS_org_xmlvm_iphone_UIApplication_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIApplication, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIApplication]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIApplication(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIApplication]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIApplication()
{
    if (!__TIB_org_xmlvm_iphone_UIApplication.classInitialized) __INIT_org_xmlvm_iphone_UIApplication();
    org_xmlvm_iphone_UIApplication* me = (org_xmlvm_iphone_UIApplication*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIApplication));
    me->tib = &__TIB_org_xmlvm_iphone_UIApplication;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIApplication]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIApplication()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIApplication();
    org_xmlvm_iphone_UIApplication___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIApplication___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication___INIT___]
    org_xmlvm_iphone_UIResponder___INIT___(me);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_sharedApplication__()
{
    if (!__TIB_org_xmlvm_iphone_UIApplication.classInitialized) __INIT_org_xmlvm_iphone_UIApplication();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_sharedApplication__]
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIApplication();
    org_xmlvm_iphone_UIApplication_INTERNAL_CONSTRUCTOR(obj, [UIApplication sharedApplication]);
    return obj;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_getKeyWindow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_getKeyWindow__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_getWindows__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_getWindows__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int]
    org_xmlvm_iphone_UIApplication* thiz = me;
    [((UIApplication*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) setStatusBarOrientation:n1];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean]
	UIApplication *app = curApp->fields.org_xmlvm_iphone_UIApplication.ocApp;
	[app setStatusBarHidden: n1];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIApplication_getStatusBarStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_getStatusBarStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIApplication_isNetworkActivityIndicatorVisible__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_isNetworkActivityIndicatorVisible__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_setNetworkActivityIndicatorVisible___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_setNetworkActivityIndicatorVisible___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplication_main___java_lang_String_ARRAYTYPE_java_lang_Class_java_lang_Class(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    if (!__TIB_org_xmlvm_iphone_UIApplication.classInitialized) __INIT_org_xmlvm_iphone_UIApplication();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_main___java_lang_String_ARRAYTYPE_java_lang_Class_java_lang_Class]
	
	//java_lang_Class_newInstance__
    appToRun = (*(JAVA_OBJECT (*)(JAVA_OBJECT)) ((java_lang_Class*) n3)->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Class_newInstance__])(n3);	
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    UIApplicationMain(0 /*argc*/, nil /*argv*/, @"UIAppWrap", @"UIAppWrap");
	[pool release];	

    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIApplication_access$000__()
{
    if (!__TIB_org_xmlvm_iphone_UIApplication.classInitialized) __INIT_org_xmlvm_iphone_UIApplication();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplication_access$000__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

