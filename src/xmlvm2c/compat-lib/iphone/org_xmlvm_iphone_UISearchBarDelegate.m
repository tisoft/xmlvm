#include "xmlvm.h"
#include "org_xmlvm_iphone_UISearchBar.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UISearchBarDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UISearchBarDelegate __TIB_org_xmlvm_iphone_UISearchBarDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UISearchBarDelegate, // classInitializer
    "org.xmlvm.iphone.UISearchBarDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBarDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBarDelegate_ARRAYTYPE;

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

void __INIT_org_xmlvm_iphone_UISearchBarDelegate()
{
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISearchBarDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBarDelegate_searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UISearchBarDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UISearchBarDelegate);
    __TIB_org_xmlvm_iphone_UISearchBarDelegate.clazz = __CLASS_org_xmlvm_iphone_UISearchBarDelegate;
    __CLASS_org_xmlvm_iphone_UISearchBarDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISearchBarDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UISearchBarDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISearchBarDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISearchBarDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UISearchBarDelegate.classInitialized) __INIT_org_xmlvm_iphone_UISearchBarDelegate();
    org_xmlvm_iphone_UISearchBarDelegate* me = (org_xmlvm_iphone_UISearchBarDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISearchBarDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UISearchBarDelegate;
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

