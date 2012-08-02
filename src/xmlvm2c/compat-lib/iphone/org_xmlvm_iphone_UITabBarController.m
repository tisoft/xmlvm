#include "xmlvm.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_UITabBar.h"
#include "org_xmlvm_iphone_UITabBarControllerDelegate.h"

#include "org_xmlvm_iphone_UITabBarController.h"

#define XMLVM_CURRENT_CLASS_NAME UITabBarController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITabBarController

__TIB_DEFINITION_org_xmlvm_iphone_UITabBarController __TIB_org_xmlvm_iphone_UITabBarController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UITabBarController, // classInitializer
    "org.xmlvm.iphone.UITabBarController", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIViewController, // extends
    sizeof(org_xmlvm_iphone_UITabBarController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarController_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>
#include "xmlvm-util.h"

void org_xmlvm_iphone_UITabBarController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_UIResponder_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [UITabBarController class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_UITabBarController();
        org_xmlvm_iphone_UITabBarController_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITabBarController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITabBarController___INIT___(obj);
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
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarControllerDelegate,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIViewController,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_java_util_List,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"requestInternalFrame",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"getCustomizableViewControllers",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setCustomizableViewControllers",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UITabBarControllerDelegate;",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UITabBarControllerDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getMoreNavigationController",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UINavigationController;",
    JAVA_NULL,
    JAVA_NULL},
    {"getSelectedViewController",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIViewController;",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectedViewController",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIViewController;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getSelectedIndex",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectedIndex",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getTabBar",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UITabBar;",
    JAVA_NULL,
    JAVA_NULL},
    {"getViewControllers",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setViewControllers",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setViewControllers",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"updateViews",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITabBarController_requestInternalFrame__(receiver);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_List(receiver, argsArray[0]);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITabBarController_getDelegate__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate(receiver, argsArray[0]);
        break;
    case 5:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITabBarController_getMoreNavigationController__(receiver);
        break;
    case 6:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITabBarController_getSelectedViewController__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController(receiver, argsArray[0]);
        break;
    case 8:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UITabBarController_getSelectedIndex__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 9:
        org_xmlvm_iphone_UITabBarController_setSelectedIndex___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 10:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITabBarController_getTabBar__(receiver);
        break;
    case 11:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITabBarController_getViewControllers__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_List(receiver, argsArray[0]);
        break;
    case 13:
        org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_List_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 14:
        org_xmlvm_iphone_UITabBarController_updateViews__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITabBarController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UITabBarController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UITabBarController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UITabBarController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UITabBarController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UITabBarController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UITabBarController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UITabBarController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UITabBarController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UITabBarController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_org_xmlvm_iphone_UIViewController();
    __TIB_org_xmlvm_iphone_UITabBarController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBarController.vtable, __TIB_org_xmlvm_iphone_UIViewController.vtable, sizeof(__TIB_org_xmlvm_iphone_UIViewController.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITabBarController.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_requestInternalFrame__;
    __TIB_org_xmlvm_iphone_UITabBarController.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_updateViews__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UITabBarController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITabBarController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UITabBarController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITabBarController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITabBarController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITabBarController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITabBarController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITabBarController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITabBarController);
    __TIB_org_xmlvm_iphone_UITabBarController.clazz = __CLASS_org_xmlvm_iphone_UITabBarController;
    __TIB_org_xmlvm_iphone_UITabBarController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UITabBarController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarController);
    __CLASS_org_xmlvm_iphone_UITabBarController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarController_1ARRAY);
    __CLASS_org_xmlvm_iphone_UITabBarController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarController]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UITabBarController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UITabBarController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarController]
    __DELETE_org_xmlvm_iphone_UIViewController(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarController()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarController.classInitialized) __INIT_org_xmlvm_iphone_UITabBarController();
    org_xmlvm_iphone_UITabBarController* me = (org_xmlvm_iphone_UITabBarController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarController));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBarController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarController(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarController();
    org_xmlvm_iphone_UITabBarController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController___INIT___]
    UITabBarController* obj = [[UITabBarController alloc] init];
    org_xmlvm_iphone_UIViewController_INTERNAL_CONSTRUCTOR(me, obj);
    org_xmlvm_iphone_UITabBarController* thiz = me;
    thiz->fields.org_xmlvm_iphone_UITabBarController.viewControllers = JAVA_NULL;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_requestInternalFrame__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_requestInternalFrame__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getMoreNavigationController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getMoreNavigationController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getSelectedViewController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getSelectedViewController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITabBarController_getSelectedIndex__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getSelectedIndex__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setSelectedIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setSelectedIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getTabBar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getTabBar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getViewControllers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getViewControllers__]
    /*
     * It is possible that iOS has changed the list of UIViewController. This can
     * happen if for example the user rearranged the UITabBar. We have to reconstruct
     * the actual order and *not* use field 'viewControllers'.
     */
    XMLVM_VAR_THIZ;
    JAVA_OBJECT jvc = XMLVMUtil_NEW_ArrayList();
    NSArray* vc = thiz.viewControllers;
    int i = 0;
    for (i = 0; i < [vc count]; i++) {
        UIViewController* c = [vc objectAtIndex:i];
        JAVA_OBJECT jc = xmlvm_get_associated_c_object(c);
        if (jc == JAVA_NULL) {
            XMLVM_INTERNAL_ERROR();
        }
        XMLVMUtil_ArrayList_add(jvc, jc);
    }
    jthiz->fields.org_xmlvm_iphone_UITabBarController.viewControllers = jvc;
    return jvc;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_List]
    XMLVM_VAR_THIZ;
    JAVA_OBJECT viewControllers = n1;
    jthiz->fields.org_xmlvm_iphone_UITabBarController.viewControllers = viewControllers;
    int size = XMLVMUtil_ArrayList_size(viewControllers);
    NSMutableArray* a = [[NSMutableArray alloc] initWithCapacity:size];
    int i = 0;
    for (i = 0; i < size; i++) {
        org_xmlvm_iphone_UIViewController* c = XMLVMUtil_ArrayList_get(viewControllers, i);
        [a addObject:c->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj];
    }
    thiz.viewControllers = a;
    [a release];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_List_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_List_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

