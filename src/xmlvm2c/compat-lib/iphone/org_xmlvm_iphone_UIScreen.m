#include "xmlvm.h"

#include "org_xmlvm_iphone_UIScreen.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIScreen __TIB_org_xmlvm_iphone_UIScreen = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIScreen, // classInitializer
    "org.xmlvm.iphone.UIScreen", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import "UIKit/UIScreen.h"
#include "org_xmlvm_iphone_CGRect.h"
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
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

void __INIT_org_xmlvm_iphone_UIScreen()
{
    __TIB_org_xmlvm_iphone_UIScreen.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIScreen.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIScreen;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIScreen.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIScreen.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIScreen_getBounds__;
    __TIB_org_xmlvm_iphone_UIScreen.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIScreen_getApplicationFrame__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIScreen.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIScreen.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIScreen.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIScreen.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIScreen.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIScreen.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIScreen.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIScreen = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIScreen);
    __TIB_org_xmlvm_iphone_UIScreen.clazz = __CLASS_org_xmlvm_iphone_UIScreen;
    __CLASS_org_xmlvm_iphone_UIScreen_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIScreen, 1);
    org_xmlvm_iphone_UIScreen___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIScreen]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIScreen(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIScreen]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIScreen()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    org_xmlvm_iphone_UIScreen* me = (org_xmlvm_iphone_UIScreen*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIScreen));
    me->tib = &__TIB_org_xmlvm_iphone_UIScreen;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIScreen]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIScreen()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIScreen_mainScreen__()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScreen_mainScreen__]
	org_xmlvm_iphone_UIScreen* toRet = __NEW_org_xmlvm_iphone_UIScreen();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(toRet, [UIScreen mainScreen]);
	return toRet;
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

void org_xmlvm_iphone_UIScreen___CLINIT_()
{
    if (!__TIB_org_xmlvm_iphone_UIScreen.classInitialized) __INIT_org_xmlvm_iphone_UIScreen();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScreen___CLINIT___]
    //XMLVM_END_WRAPPER
}

