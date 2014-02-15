#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_NSIndexPath.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "org_xmlvm_iphone_UITableViewCell.h"
#include "org_xmlvm_iphone_UITableViewDataSource.h"
#include "org_xmlvm_iphone_UITableViewDelegate.h"

#include "org_xmlvm_iphone_UITableView.h"

#define XMLVM_CURRENT_CLASS_NAME UITableView
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableView

__TIB_DEFINITION_org_xmlvm_iphone_UITableView __TIB_org_xmlvm_iphone_UITableView = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UITableView, // classInitializer
    "org.xmlvm.iphone.UITableView", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIScrollView, // extends
    sizeof(org_xmlvm_iphone_UITableView), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableView_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableView_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableView_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include "org_xmlvm_iphone_NSString.h"
#import <UIKit/UIKit.h>
#include "org_xmlvm_iphone_UIScrollView.h"

void org_xmlvm_iphone_UITableView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_UIScrollView_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __constructor2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
    &__CLASS_int,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor2_arg_types[0],
    sizeof(__constructor2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;I)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITableView___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect_int(obj, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableViewDataSource,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableViewDelegate,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_util_List,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_java_util_List,
    &__CLASS_int,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_java_util_List,
    &__CLASS_int,
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method15_arg_types[] = {
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method17_arg_types[] = {
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_boolean,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method22_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
    &__CLASS_int,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_int,
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setDataSource",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UITableViewDataSource;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UITableViewDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getTableViewDelegate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UITableViewDelegate;",
    JAVA_NULL,
    JAVA_NULL},
    {"getDataSource",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UITableViewDataSource;",
    JAVA_NULL,
    JAVA_NULL},
    {"dequeueReusableCellWithIdentifier",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Lorg/xmlvm/iphone/UITableViewCell;",
    JAVA_NULL,
    JAVA_NULL},
    {"deleteRowsAtIndexPaths",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"reloadData",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"reloadRowsAtIndexPaths",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"indexPathForSelectedRow",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSIndexPath;",
    JAVA_NULL,
    JAVA_NULL},
    {"deselectRowAtIndexPath",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSIndexPath;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"insertRowsAtIndexPaths",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getSeparatorColor",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIColor;",
    JAVA_NULL,
    JAVA_NULL},
    {"setSeparatorColor",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIColor;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getSeparatorStyle",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setSeparatorStyle",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isAllowsSelection",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setAllowsSelection",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isEditing",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setEditing",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setEditing",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(ZZ)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getRowHeight",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setRowHeight",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollToRowAtIndexPath",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSIndexPath;IZ)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollToNearestSelectedRowAtScrollPosition",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(IZ)V",
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
        org_xmlvm_iphone_UITableView_setDataSource___org_xmlvm_iphone_UITableViewDataSource(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate(receiver, argsArray[0]);
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITableView_getTableViewDelegate__(receiver);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITableView_getDataSource__(receiver);
        break;
    case 4:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITableView_dequeueReusableCellWithIdentifier___java_lang_String(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UITableView_deleteRowsAtIndexPaths___java_util_List_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 6:
        org_xmlvm_iphone_UITableView_reloadData__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UITableView_reloadRowsAtIndexPaths___java_util_List_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 8:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITableView_indexPathForSelectedRow__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UITableView_deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 10:
        org_xmlvm_iphone_UITableView_insertRowsAtIndexPaths___java_util_List_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 11:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UITableView_getSeparatorColor__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UITableView_setSeparatorColor___org_xmlvm_iphone_UIColor(receiver, argsArray[0]);
        break;
    case 13:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UITableView_getSeparatorStyle__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 14:
        org_xmlvm_iphone_UITableView_setSeparatorStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 15:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UITableView_isAllowsSelection__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 16:
        org_xmlvm_iphone_UITableView_setAllowsSelection___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 17:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UITableView_isEditing__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 18:
        org_xmlvm_iphone_UITableView_setEditing___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 19:
        org_xmlvm_iphone_UITableView_setEditing___boolean_boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 20:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_UITableView_getRowHeight__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 21:
        org_xmlvm_iphone_UITableView_setRowHeight___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 22:
        org_xmlvm_iphone_UITableView_scrollToRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_int_boolean(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Boolean*) argsArray[2])->fields.java_lang_Boolean.value_);
        break;
    case 23:
        org_xmlvm_iphone_UITableView_scrollToNearestSelectedRowAtScrollPosition___int_boolean(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITableView()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UITableView);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UITableView.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UITableView.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UITableView);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UITableView.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UITableView.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UITableView.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UITableView")
        __INIT_IMPL_org_xmlvm_iphone_UITableView();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UITableView()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIScrollView)
    __TIB_org_xmlvm_iphone_UITableView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableView.vtable, __TIB_org_xmlvm_iphone_UIScrollView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIScrollView.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UITableView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UITableView.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableView.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableView.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableView.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITableView.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableView.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableView);
    __TIB_org_xmlvm_iphone_UITableView.clazz = __CLASS_org_xmlvm_iphone_UITableView;
    __TIB_org_xmlvm_iphone_UITableView.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UITableView_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableView);
    __CLASS_org_xmlvm_iphone_UITableView_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableView_1ARRAY);
    __CLASS_org_xmlvm_iphone_UITableView_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableView_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableView]

    // UITableViewCell __WRAPPER_CREATOR is required for the delegate wrapper
    if (!__TIB_org_xmlvm_iphone_UITableViewCell.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCell();

    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UITableView.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UITableView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableView]
    __DELETE_org_xmlvm_iphone_UIScrollView(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableView(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScrollView(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableView()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableView)
org_xmlvm_iphone_UITableView* me = (org_xmlvm_iphone_UITableView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableView));
    me->tib = &__TIB_org_xmlvm_iphone_UITableView;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableView(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableView();
    org_xmlvm_iphone_UITableView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITableView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView___INIT___]
    UITableView* obj = [[UITableView alloc] init];
    org_xmlvm_iphone_UITableView_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_VAR_CGRect(frame, n1);
    
    UITableView* obj = [[UITableView alloc] initWithFrame:frame];
    org_xmlvm_iphone_UITableView_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView___INIT____org_xmlvm_iphone_CGRect_int]
    XMLVM_VAR_CGRect(frame, n1);
    XMLVM_VAR_INT(style, n2);
    
    UITableView* obj = [[UITableView alloc] initWithFrame:frame style:style];
    org_xmlvm_iphone_UITableView_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setDataSource___org_xmlvm_iphone_UITableViewDataSource(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setDataSource___org_xmlvm_iphone_UITableViewDataSource]
    XMLVM_VAR_THIZ;
    
    UITableViewDataSourceWrapper* dataSource = ((org_xmlvm_iphone_UITableViewDataSource*) n1)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    jthiz->fields.org_xmlvm_iphone_UITableView.jdataSource = n1;
    [dataSource addSource: jthiz: thiz];
    thiz.dataSource = dataSource;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setDelegate___org_xmlvm_iphone_UITableViewDelegate]
    XMLVM_VAR_THIZ;
    
    UITableViewDelegateWrapper* delegate = ((org_xmlvm_iphone_UITableViewDelegate*) n1)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;   
    jthiz->fields.org_xmlvm_iphone_UITableView.jdelegate = n1;
    [delegate addSource: jthiz: thiz];
    thiz.delegate = delegate;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_getTableViewDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getTableViewDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_getDataSource__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getDataSource__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_dequeueReusableCellWithIdentifier___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_dequeueReusableCellWithIdentifier___java_lang_String]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_NSString(cellIdentifier, n1);
    UITableViewCell* cell = [thiz dequeueReusableCellWithIdentifier:cellIdentifier];
    [cellIdentifier release];
    return xmlvm_get_associated_c_object(cell);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_deleteRowsAtIndexPaths___java_util_List_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_deleteRowsAtIndexPaths___java_util_List_boolean]
    XMLVM_VAR_THIZ;
    JAVA_OBJECT jpaths = n1;
    XMLVM_VAR_BOOLEAN(animated, n2);
    NSMutableArray* paths = [[NSMutableArray alloc] init];
    for (int i = 0; i < XMLVMUtil_ArrayList_size(jpaths); i++) {
        org_xmlvm_iphone_NSObject* jpath = XMLVMUtil_ArrayList_get(jpaths, i);
        [paths addObject:jpath->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj];
    }
    [thiz deleteRowsAtIndexPaths:paths withRowAnimation:animated];
    [paths release];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_reloadData__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_reloadData__]
    XMLVM_VAR_THIZ;
    [thiz reloadData];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_reloadRowsAtIndexPaths___java_util_List_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_reloadRowsAtIndexPaths___java_util_List_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_indexPathForSelectedRow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_indexPathForSelectedRow__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_insertRowsAtIndexPaths___java_util_List_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_insertRowsAtIndexPaths___java_util_List_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableView_getSeparatorColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getSeparatorColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setSeparatorColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setSeparatorColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITableView_getSeparatorStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getSeparatorStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setSeparatorStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setSeparatorStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableView_isAllowsSelection__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_isAllowsSelection__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setAllowsSelection___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setAllowsSelection___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableView_isEditing__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_isEditing__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setEditing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setEditing___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setEditing___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setEditing___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UITableView_getRowHeight__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_getRowHeight__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_setRowHeight___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_setRowHeight___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_scrollToRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_int_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_scrollToRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableView_scrollToNearestSelectedRowAtScrollPosition___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableView_scrollToNearestSelectedRowAtScrollPosition___int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

