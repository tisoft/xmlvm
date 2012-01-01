#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_UIPickerView.h"
#include "org_xmlvm_iphone_UIView.h"

#include "org_xmlvm_iphone_UIPickerViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UIPickerViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIPickerViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UIPickerViewDelegate __TIB_org_xmlvm_iphone_UIPickerViewDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIPickerViewDelegate, // classInitializer
    "org.xmlvm.iphone.UIPickerViewDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIPickerViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPickerViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPickerViewDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPickerViewDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPickerViewDelegate_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIPickerViewDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIPickerViewDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPickerView,
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPickerView,
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPickerView,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPickerView,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIPickerView,
    &__CLASS_int,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"rowHeightForComponent",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPickerView;I)F",
    JAVA_NULL,
    JAVA_NULL},
    {"widthForComponent",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPickerView;I)F",
    JAVA_NULL,
    JAVA_NULL},
    {"viewForRow",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPickerView;IILorg/xmlvm/iphone/UIView;)Lorg/xmlvm/iphone/UIView;",
    JAVA_NULL,
    JAVA_NULL},
    {"titleForRow",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPickerView;II)Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"didSelectRow",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIPickerView;II)V",
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
        org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, argsArray[3]);
        break;
    case 3:
        org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_);
        break;
    case 4:
        org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIPickerViewDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIPickerViewDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIPickerViewDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIPickerViewDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIPickerViewDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIPickerViewDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIPickerViewDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPickerViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIPickerViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIPickerViewDelegate);
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.clazz = __CLASS_org_xmlvm_iphone_UIPickerViewDelegate;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIPickerViewDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPickerViewDelegate);
    __CLASS_org_xmlvm_iphone_UIPickerViewDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPickerViewDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIPickerViewDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPickerViewDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIPickerViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPickerViewDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPickerViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIPickerViewDelegate();
    org_xmlvm_iphone_UIPickerViewDelegate* me = (org_xmlvm_iphone_UIPickerViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPickerViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UIPickerViewDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPickerViewDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPickerViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPickerViewDelegate();
    org_xmlvm_iphone_UIPickerViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPickerViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

