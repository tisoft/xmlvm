#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIScreen.h"

#define XMLVM_CURRENT_CLASS_NAME UIScreen
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIScreen

__TIB_DEFINITION_org_xmlvm_iphone_UIScreen __TIB_org_xmlvm_iphone_UIScreen = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIScreen, // classInitializer
    "org.xmlvm.iphone.UIScreen", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIScreen), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import "UIKit/UIScreen.h"
#include "org_xmlvm_iphone_CGRect.h"

void org_xmlvm_iphone_UIScreen_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [UIScreen class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_UIScreen();
        org_xmlvm_iphone_UIScreen_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidConnectNotification;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidDisconnectNotification;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIScreen_UIScreenModeDidChangeNotification;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"UIScreenDidConnectNotification",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidConnectNotification,
    "",
    JAVA_NULL},
    {"UIScreenDidDisconnectNotification",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidDisconnectNotification,
    "",
    JAVA_NULL},
    {"UIScreenModeDidChangeNotification",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIScreen_UIScreenModeDidChangeNotification,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIScreen();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
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
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"mainScreen",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIScreen;",
    JAVA_NULL,
    JAVA_NULL},
    {"screens",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"getBounds",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"getApplicationFrame",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"getScale",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIScreen_mainScreen__();
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIScreen_screens__();
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIScreen_getBounds__(receiver);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIScreen_getApplicationFrame__(receiver);
        break;
    case 4:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_UIScreen_getScale__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIScreen()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIScreen);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIScreen.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIScreen.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIScreen);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIScreen.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIScreen.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIScreen();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIScreen()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIScreen.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIScreen;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIScreen.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIScreen.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIScreen.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidConnectNotification = (java_lang_String*) xmlvm_create_java_string_from_pool(37);
    _STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidDisconnectNotification = (java_lang_String*) xmlvm_create_java_string_from_pool(38);
    _STATIC_org_xmlvm_iphone_UIScreen_UIScreenModeDidChangeNotification = (java_lang_String*) xmlvm_create_java_string_from_pool(39);

    __TIB_org_xmlvm_iphone_UIScreen.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIScreen.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIScreen.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIScreen.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIScreen.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIScreen.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIScreen.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIScreen.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIScreen = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIScreen);
    __TIB_org_xmlvm_iphone_UIScreen.clazz = __CLASS_org_xmlvm_iphone_UIScreen;
    __TIB_org_xmlvm_iphone_UIScreen.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIScreen_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIScreen);
    __CLASS_org_xmlvm_iphone_UIScreen_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIScreen_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIScreen_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIScreen_2ARRAY);
    org_xmlvm_iphone_UIScreen___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIScreen]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIScreen.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIScreen(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIScreen]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScreen(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScreen]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIScreen()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    org_xmlvm_iphone_UIScreen* me = (org_xmlvm_iphone_UIScreen*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIScreen));
    me->tib = &__TIB_org_xmlvm_iphone_UIScreen;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScreen(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIScreen]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIScreen()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIScreen_GET_UIScreenDidConnectNotification()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    return _STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidConnectNotification;
}

void org_xmlvm_iphone_UIScreen_PUT_UIScreenDidConnectNotification(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    _STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidConnectNotification = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIScreen_GET_UIScreenDidDisconnectNotification()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    return _STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidDisconnectNotification;
}

void org_xmlvm_iphone_UIScreen_PUT_UIScreenDidDisconnectNotification(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    _STATIC_org_xmlvm_iphone_UIScreen_UIScreenDidDisconnectNotification = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIScreen_GET_UIScreenModeDidChangeNotification()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    return _STATIC_org_xmlvm_iphone_UIScreen_UIScreenModeDidChangeNotification;
}

void org_xmlvm_iphone_UIScreen_PUT_UIScreenModeDidChangeNotification(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    _STATIC_org_xmlvm_iphone_UIScreen_UIScreenModeDidChangeNotification = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIScreen_mainScreen__()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScreen_mainScreen__]
    return xmlvm_get_associated_c_object([UIScreen mainScreen]);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIScreen_screens__()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScreen_screens__]
    JAVA_OBJECT jscreens = XMLVMUtil_NEW_ArrayList();
    for (UIScreen* screen in [UIScreen screens]) {
        XMLVMUtil_ArrayList_add(jscreens, xmlvm_get_associated_c_object(screen));
    }
    return jscreens;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIScreen_getBounds__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScreen_getBounds__]
    org_xmlvm_iphone_UIScreen* thiz = me;
    CGRect bounds = ((UIScreen*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)).bounds;
    return fromCGRect(bounds);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIScreen_getApplicationFrame__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScreen_getApplicationFrame__]
	org_xmlvm_iphone_UIScreen* thiz = me;
	UIScreen *screen = thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
	CGRect rect = [screen applicationFrame];
	JAVA_OBJECT toRet = __NEW_org_xmlvm_iphone_CGRect();
	org_xmlvm_iphone_CGRect___INIT____float_float_float_float(
		toRet, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
	return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIScreen_getScale__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScreen_getScale__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScreen___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScreen___CLINIT___]
    //XMLVM_END_WRAPPER
}

