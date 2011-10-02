#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_UISearchBar.h"

#include "org_xmlvm_iphone_UISearchBarDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UISearchBarDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UISearchBarDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UISearchBarDelegate __TIB_org_xmlvm_iphone_UISearchBarDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UISearchBarDelegate, // classInitializer
    "org.xmlvm.iphone.UISearchBarDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UISearchBarDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBarDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBarDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBarDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBarDelegate_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UISearchBarDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UISearchBarDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBar,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"searchBarTextDidChange",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"searchBarShouldBeginEditing",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"searchBarTextDidBeginEditing",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"searchBarShouldEndEditing",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"searchBarTextDidEndEditing",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"searchBarBookmarkButtonClicked",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"searchBarCancelButtonClicked",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"searchBarSearchButtonClicked",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"searchBarSelectedScopeButtonIndexDidChange",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UISearchBarDelegate_searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UISearchBarDelegate_searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_UISearchBarDelegate_searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_UISearchBarDelegate_searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UISearchBarDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UISearchBarDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UISearchBarDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UISearchBarDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UISearchBarDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UISearchBarDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UISearchBarDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UISearchBarDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UISearchBarDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISearchBarDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UISearchBarDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UISearchBarDelegate);
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.clazz = __CLASS_org_xmlvm_iphone_UISearchBarDelegate;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISearchBarDelegate);
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISearchBarDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISearchBarDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UISearchBarDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UISearchBarDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISearchBarDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISearchBarDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UISearchBarDelegate.classInitialized) __INIT_org_xmlvm_iphone_UISearchBarDelegate();
    org_xmlvm_iphone_UISearchBarDelegate* me = (org_xmlvm_iphone_UISearchBarDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISearchBarDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UISearchBarDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISearchBarDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISearchBarDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISearchBarDelegate();
    org_xmlvm_iphone_UISearchBarDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UISearchBarDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBarDelegate_searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBarDelegate_searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

