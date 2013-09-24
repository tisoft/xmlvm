#include "xmlvm.h"
#include "org_xmlvm_iphone_UIScrollView.h"
#include "org_xmlvm_iphone_UIView.h"

#include "org_xmlvm_iphone_UIScrollViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UIScrollViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIScrollViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UIScrollViewDelegate __TIB_org_xmlvm_iphone_UIScrollViewDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIScrollViewDelegate, // classInitializer
    "org.xmlvm.iphone.UIScrollViewDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIScrollViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScrollViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScrollViewDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScrollViewDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScrollViewDelegate_3ARRAY;
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIScrollViewDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIScrollViewDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
    &__CLASS_org_xmlvm_iphone_UIView,
    &__CLASS_float,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIScrollView,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"scrollViewDidScroll",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollViewWillBeginDragging",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollViewDidEndDragging",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollViewShouldScrollToTop",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollViewDidScrollToTop",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollViewWillBeginDecelerating",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollViewDidEndDecelerating",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"viewForZoomingInScrollView",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;)Lorg/xmlvm/iphone/UIView;",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollViewDidEndZooming",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;Lorg/xmlvm/iphone/UIView;F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollViewDidEndScrollingAnimation",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIScrollView;)V",
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
        org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidScroll___org_xmlvm_iphone_UIScrollView(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UIScrollViewDelegate_scrollViewWillBeginDragging___org_xmlvm_iphone_UIScrollView(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndDragging___org_xmlvm_iphone_UIScrollView_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 3:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIScrollViewDelegate_scrollViewShouldScrollToTop___org_xmlvm_iphone_UIScrollView(receiver, argsArray[0]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 4:
        org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidScrollToTop___org_xmlvm_iphone_UIScrollView(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UIScrollViewDelegate_scrollViewWillBeginDecelerating___org_xmlvm_iphone_UIScrollView(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndDecelerating___org_xmlvm_iphone_UIScrollView(receiver, argsArray[0]);
        break;
    case 7:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIScrollViewDelegate_viewForZoomingInScrollView___org_xmlvm_iphone_UIScrollView(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndZooming___org_xmlvm_iphone_UIScrollView_org_xmlvm_iphone_UIView_float(receiver, argsArray[0], argsArray[1], ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_);
        break;
    case 9:
        org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndScrollingAnimation___org_xmlvm_iphone_UIScrollView(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIScrollViewDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIScrollViewDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIScrollViewDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIScrollViewDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIScrollViewDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIScrollViewDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIScrollViewDelegate.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIScrollViewDelegate")
        __INIT_IMPL_org_xmlvm_iphone_UIScrollViewDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIScrollViewDelegate()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIScrollViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIScrollViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIScrollViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIScrollViewDelegate);
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.clazz = __CLASS_org_xmlvm_iphone_UIScrollViewDelegate;
    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIScrollViewDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIScrollViewDelegate);
    __CLASS_org_xmlvm_iphone_UIScrollViewDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIScrollViewDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIScrollViewDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIScrollViewDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIScrollViewDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIScrollViewDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIScrollViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIScrollViewDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScrollViewDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScrollViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIScrollViewDelegate()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIScrollViewDelegate)
org_xmlvm_iphone_UIScrollViewDelegate* me = (org_xmlvm_iphone_UIScrollViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIScrollViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UIScrollViewDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScrollViewDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIScrollViewDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIScrollViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIScrollViewDelegate();
    org_xmlvm_iphone_UIScrollViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIScrollViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidScroll___org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidScroll___org_xmlvm_iphone_UIScrollView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollViewDelegate_scrollViewWillBeginDragging___org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewWillBeginDragging___org_xmlvm_iphone_UIScrollView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndDragging___org_xmlvm_iphone_UIScrollView_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndDragging___org_xmlvm_iphone_UIScrollView_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIScrollViewDelegate_scrollViewShouldScrollToTop___org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewShouldScrollToTop___org_xmlvm_iphone_UIScrollView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidScrollToTop___org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidScrollToTop___org_xmlvm_iphone_UIScrollView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollViewDelegate_scrollViewWillBeginDecelerating___org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewWillBeginDecelerating___org_xmlvm_iphone_UIScrollView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndDecelerating___org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndDecelerating___org_xmlvm_iphone_UIScrollView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIScrollViewDelegate_viewForZoomingInScrollView___org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_viewForZoomingInScrollView___org_xmlvm_iphone_UIScrollView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndZooming___org_xmlvm_iphone_UIScrollView_org_xmlvm_iphone_UIView_float(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_FLOAT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndZooming___org_xmlvm_iphone_UIScrollView_org_xmlvm_iphone_UIView_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndScrollingAnimation___org_xmlvm_iphone_UIScrollView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIScrollViewDelegate_scrollViewDidEndScrollingAnimation___org_xmlvm_iphone_UIScrollView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

