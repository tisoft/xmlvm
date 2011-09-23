#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_UIActionSheet.h"
#include "org_xmlvm_iphone_UIActionSheetDelegate.h"
#include "org_xmlvm_iphone_UITabBar.h"
#include "org_xmlvm_iphone_UIToolbar.h"

#include "org_xmlvm_iphone_UIActionSheet.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME UIActionSheet
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIActionSheet

__TIB_DEFINITION_org_xmlvm_iphone_UIActionSheet __TIB_org_xmlvm_iphone_UIActionSheet = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIActionSheet, // classInitializer
    "org.xmlvm.iphone.UIActionSheet", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIActionSheet), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIActionSheet();
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
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_UIActionSheetDelegate,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String_1ARRAY,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBar,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIToolbar,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_int,
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"init",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"showFromTabBar",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"showFromToolbar",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"showInView",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dismissWithClickedButtonIndex",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_1ARRAY(argsArray[0], argsArray[1], argsArray[2], argsArray[3], argsArray[4]);
        break;
    case 1:
        org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIActionSheet()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIActionSheet);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIActionSheet.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIActionSheet.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIActionSheet);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIActionSheet.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIActionSheet.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIActionSheet.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIActionSheet();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIActionSheet()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIActionSheet.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIActionSheet;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIActionSheet.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIActionSheet.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIActionSheet.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIActionSheet.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActionSheet.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIActionSheet.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIActionSheet.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActionSheet.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIActionSheet.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIActionSheet.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActionSheet.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIActionSheet = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIActionSheet);
    __TIB_org_xmlvm_iphone_UIActionSheet.clazz = __CLASS_org_xmlvm_iphone_UIActionSheet;
    __TIB_org_xmlvm_iphone_UIActionSheet.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIActionSheet_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIActionSheet);
    __CLASS_org_xmlvm_iphone_UIActionSheet_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIActionSheet_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIActionSheet_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIActionSheet_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIActionSheet.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIActionSheet(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIActionSheet(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActionSheet()
{
    if (!__TIB_org_xmlvm_iphone_UIActionSheet.classInitialized) __INIT_org_xmlvm_iphone_UIActionSheet();
    org_xmlvm_iphone_UIActionSheet* me = (org_xmlvm_iphone_UIActionSheet*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIActionSheet));
    me->tib = &__TIB_org_xmlvm_iphone_UIActionSheet;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIActionSheet(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIActionSheet()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_1ARRAY(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_OBJECT n5)
{
    if (!__TIB_org_xmlvm_iphone_UIActionSheet.classInitialized) __INIT_org_xmlvm_iphone_UIActionSheet();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

