#include "xmlvm.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UITabBar.h"
#include "org_xmlvm_iphone_UITabBarItem.h"

#include "org_xmlvm_iphone_UITabBarDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITabBarDelegate __TIB_org_xmlvm_iphone_UITabBarDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITabBarDelegate, // classInitializer
    "org.xmlvm.iphone.UITabBarDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarDelegate_ARRAYTYPE;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITabBarDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITabBarDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UITabBarDelegate()
{
    __TIB_org_xmlvm_iphone_UITabBarDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITabBarDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBarDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITabBarDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarDelegate_willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarDelegate_didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarDelegate_willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarDelegate_didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITabBarDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITabBarDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITabBarDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITabBarDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITabBarDelegate);
    __TIB_org_xmlvm_iphone_UITabBarDelegate.clazz = __CLASS_org_xmlvm_iphone_UITabBarDelegate;
    __CLASS_org_xmlvm_iphone_UITabBarDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITabBarDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITabBarDelegate();
    org_xmlvm_iphone_UITabBarDelegate* me = (org_xmlvm_iphone_UITabBarDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBarDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarDelegate();
    org_xmlvm_iphone_UITabBarDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarDelegate_willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate_willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarDelegate_didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate_didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarDelegate_willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate_willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarDelegate_didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate_didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

