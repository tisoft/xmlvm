#include "xmlvm.h"
#include "org_xmlvm_iphone_UITableViewCell.h"
#include "org_xmlvm_iphone_UITableView.h"
#include "org_xmlvm_iphone_NSIndexPath.h"

#include "org_xmlvm_iphone_UITableViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewDelegate __TIB_org_xmlvm_iphone_UITableViewDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UITableViewDelegate, // classInitializer
    "org.xmlvm.iphone.UITableViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UITableViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewDelegate_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>


@implementation UITableViewDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) d_
{
    [super init];
    delegate_ = d_;
    return self;
}

- (CGFloat) tableView: (UITableView*) tableView heightForRowAtIndexPath: (NSIndexPath*) indexPath;
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDelegate_heightForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath
    org_xmlvm_iphone_UITableView* tableView_ = [self getSource: tableView];
    Func_FOOO callback = (Func_FOOO) ((org_xmlvm_iphone_UITableViewDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDelegate_heightForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath];
    org_xmlvm_iphone_NSIndexPath* indexPath_ = __NEW_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath_INTERNAL_CONSTRUCTOR(indexPath_, indexPath);
    float f = callback(delegate_, tableView_, indexPath_);
    return f;
#else
    return tableView.rowHeight;
#endif
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDelegate_didSelectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath
    org_xmlvm_iphone_UITableView* tableView_ = [self getSource: tableView];
    Func_FOOO callback = (Func_FOOO) ((org_xmlvm_iphone_UITableViewDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDelegate_didSelectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath];
    org_xmlvm_iphone_NSIndexPath* indexPath_ = __NEW_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath_INTERNAL_CONSTRUCTOR(indexPath_, indexPath);
    callback(delegate_, tableView_, indexPath_);
#endif    
}

@end

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITableViewDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_UITableViewCell,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_int,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_int,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_int,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_int,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"willDisplayCellForRowAtIndexPath",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"accessoryButtonTappedForRowWithIndexPath",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didSelectRowAtIndexPath",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didDeselectRowAtIndexPath",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willBeginEditingRowAtIndexPath",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didEndEditingRowAtIndexPath",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldIndentWhileEditingRowAtIndexPath",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"editingStyleForRowAtIndexPath",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"heightForRowAtIndexPath",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewForHeaderInSection",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewForFooterInSection",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"heightForHeaderInSection",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"heightForFooterInSection",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"titleForDeleteConfirmationButtonForRowAtIndexPath",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITableViewDelegate_willDisplayCellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_UITableViewCell_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 1:
        org_xmlvm_iphone_UITableViewDelegate_accessoryButtonTappedForRowWithIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_UITableViewDelegate_didSelectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_UITableViewDelegate_didDeselectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 4:
        org_xmlvm_iphone_UITableViewDelegate_willBeginEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 5:
        org_xmlvm_iphone_UITableViewDelegate_didEndEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 6:
        org_xmlvm_iphone_UITableViewDelegate_shouldIndentWhileEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 7:
        org_xmlvm_iphone_UITableViewDelegate_editingStyleForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 8:
        org_xmlvm_iphone_UITableViewDelegate_heightForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 9:
        org_xmlvm_iphone_UITableViewDelegate_viewForHeaderInSection___org_xmlvm_iphone_UITableView_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 10:
        org_xmlvm_iphone_UITableViewDelegate_viewForFooterInSection___org_xmlvm_iphone_UITableView_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 11:
        org_xmlvm_iphone_UITableViewDelegate_heightForHeaderInSection___org_xmlvm_iphone_UITableView_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 12:
        org_xmlvm_iphone_UITableViewDelegate_heightForFooterInSection___org_xmlvm_iphone_UITableView_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 13:
        org_xmlvm_iphone_UITableViewDelegate_titleForDeleteConfirmationButtonForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITableViewDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UITableViewDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UITableViewDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UITableViewDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UITableViewDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UITableViewDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UITableViewDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UITableViewDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UITableViewDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UITableViewDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITableViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UITableViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UITableViewDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewDelegate);
    __TIB_org_xmlvm_iphone_UITableViewDelegate.clazz = __CLASS_org_xmlvm_iphone_UITableViewDelegate;
    __TIB_org_xmlvm_iphone_UITableViewDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UITableViewDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewDelegate);
    __CLASS_org_xmlvm_iphone_UITableViewDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UITableViewDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UITableViewDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UITableViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewDelegate]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewDelegate(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITableViewDelegate();
    org_xmlvm_iphone_UITableViewDelegate* me = (org_xmlvm_iphone_UITableViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewDelegate(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewDelegate]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITableViewDelegate);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewDelegate();
    org_xmlvm_iphone_UITableViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITableViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate___INIT___]
    UITableViewDelegateWrapper* wrapper = [[UITableViewDelegateWrapper alloc] initWithDelegate: me];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrapper);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewDelegate_willDisplayCellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_UITableViewCell_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_willDisplayCellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_UITableViewCell_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewDelegate_accessoryButtonTappedForRowWithIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_accessoryButtonTappedForRowWithIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewDelegate_didSelectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_didSelectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewDelegate_didDeselectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_didDeselectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewDelegate_willBeginEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_willBeginEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewDelegate_didEndEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_didEndEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableViewDelegate_shouldIndentWhileEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_shouldIndentWhileEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITableViewDelegate_editingStyleForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_editingStyleForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UITableViewDelegate_heightForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_heightForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewDelegate_viewForHeaderInSection___org_xmlvm_iphone_UITableView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_viewForHeaderInSection___org_xmlvm_iphone_UITableView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewDelegate_viewForFooterInSection___org_xmlvm_iphone_UITableView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_viewForFooterInSection___org_xmlvm_iphone_UITableView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UITableViewDelegate_heightForHeaderInSection___org_xmlvm_iphone_UITableView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_heightForHeaderInSection___org_xmlvm_iphone_UITableView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UITableViewDelegate_heightForFooterInSection___org_xmlvm_iphone_UITableView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_heightForFooterInSection___org_xmlvm_iphone_UITableView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewDelegate_titleForDeleteConfirmationButtonForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDelegate_titleForDeleteConfirmationButtonForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

