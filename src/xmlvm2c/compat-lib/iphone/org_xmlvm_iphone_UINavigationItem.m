#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_UIBarButtonItem.h"
#include "org_xmlvm_iphone_UINavigationBar.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UINavigationItem.h"

#define XMLVM_CURRENT_CLASS_NAME UINavigationItem
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UINavigationItem

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationItem __TIB_org_xmlvm_iphone_UINavigationItem = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UINavigationItem, // classInitializer
    "org.xmlvm.iphone.UINavigationItem", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UINavigationItem), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationItem;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationItem_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationItem_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationItem_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_String,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UINavigationItem();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UINavigationItem___INIT____java_lang_String(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UINavigationBar,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIBarButtonItem,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_boolean,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIBarButtonItem,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIBarButtonItem,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIBarButtonItem,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIBarButtonItem,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setToolbar",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBackBarButtonItem",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBackBarButtonItem",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"hidesBackButton",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setHidesBackButton",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setHidesBackButton",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getLeftBarButtonItem",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setLeftBarButtonItem",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setLeftBarButtonItem",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPrompt",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setPrompt",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getRightBarButtonItem",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setRightBarButtonItem",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setRightBarButtonItem",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTitle",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitle",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTitleView",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitleView",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UINavigationItem_hidesBackButton__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 5:
        org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 6:
        org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 9:
        org_xmlvm_iphone_UINavigationItem_getPrompt__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String(receiver, argsArray[0]);
        break;
    case 11:
        org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(receiver, argsArray[0]);
        break;
    case 13:
        org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 14:
        org_xmlvm_iphone_UINavigationItem_getTitle__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String(receiver, argsArray[0]);
        break;
    case 16:
        org_xmlvm_iphone_UINavigationItem_getTitleView__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UINavigationItem()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UINavigationItem);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UINavigationItem.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UINavigationItem.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UINavigationItem);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UINavigationItem.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UINavigationItem.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UINavigationItem.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UINavigationItem();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UINavigationItem()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UINavigationItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UINavigationItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UINavigationItem.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_hidesBackButton__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getPrompt__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getTitle__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getTitleView__;
    __TIB_org_xmlvm_iphone_UINavigationItem.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UINavigationItem.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UINavigationItem.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UINavigationItem.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationItem.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UINavigationItem.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UINavigationItem.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationItem.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UINavigationItem.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UINavigationItem.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationItem.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UINavigationItem = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UINavigationItem);
    __TIB_org_xmlvm_iphone_UINavigationItem.clazz = __CLASS_org_xmlvm_iphone_UINavigationItem;
    __TIB_org_xmlvm_iphone_UINavigationItem.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UINavigationItem_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationItem);
    __CLASS_org_xmlvm_iphone_UINavigationItem_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationItem_1ARRAY);
    __CLASS_org_xmlvm_iphone_UINavigationItem_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationItem_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UINavigationItem.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UINavigationItem(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationItem(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UINavigationItem()
{
    if (!__TIB_org_xmlvm_iphone_UINavigationItem.classInitialized) __INIT_org_xmlvm_iphone_UINavigationItem();
    org_xmlvm_iphone_UINavigationItem* me = (org_xmlvm_iphone_UINavigationItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UINavigationItem));
    me->tib = &__TIB_org_xmlvm_iphone_UINavigationItem;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationItem(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UINavigationItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UINavigationItem___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem___INIT____java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UINavigationItem_hidesBackButton__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_hidesBackButton__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getPrompt__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getPrompt__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getTitleView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getTitleView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

