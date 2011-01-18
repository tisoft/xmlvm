#include "xmlvm.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UITabBarController.h"
#include "org_xmlvm_iphone_UIViewController.h"

#include "org_xmlvm_iphone_UITabBarControllerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITabBarControllerDelegate __TIB_org_xmlvm_iphone_UITabBarControllerDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UITabBarControllerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITabBarControllerDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITabBarControllerDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarControllerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITabBarControllerDelegate);
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.clazz = __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate;
    __CLASS_org_xmlvm_iphone_UITabBarControllerDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarControllerDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITabBarControllerDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITabBarControllerDelegate();
    org_xmlvm_iphone_UITabBarControllerDelegate* me = (org_xmlvm_iphone_UITabBarControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarControllerDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBarControllerDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarControllerDelegate();
    org_xmlvm_iphone_UITabBarControllerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarControllerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

