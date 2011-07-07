#include "xmlvm.h"
#include "org_xmlvm_iphone_UITableView.h"

#include "org_xmlvm_iphone_UITableViewController.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewController

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewController __TIB_org_xmlvm_iphone_UITableViewController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UITableViewController, // classInitializer
    "org.xmlvm.iphone.UITableViewController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIViewController, // extends
    sizeof(org_xmlvm_iphone_UITableViewController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewController_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>

/*
 * TODO: This is a little ugly. The same callbacks are also defined in UIViewController.
 *       Need to find a way to share the implementation.
 */

@interface UITableViewControllerWrapper : UITableViewController
{
	// A pointer back to the C object
@public org_xmlvm_iphone_UITableViewController* wrappedCObj;
}
- (id) initWithStyle: (int) style;
- (void) loadView;
- (void) superLoadView;
- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration;
- (void) viewWillAppear:(BOOL)animated;
@end

@implementation UITableViewControllerWrapper

- (id) initWithStyle:(int)style
{
    return [super initWithStyle:style];
}

- (void) loadView
{
	// Get the function pointer to method loadView by accessing the vtable of the C object
	Func_VO loadViewFunc = 
	self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_loadView__];
    loadViewFunc(self->wrappedCObj);
}

- (void) superLoadView
{
    [super loadView];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_shouldAutorotateToInterfaceOrientation___int
	Func_BOI func = 
	(Func_BOI) self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_shouldAutorotateToInterfaceOrientation___int];
    return func(self->wrappedCObj, interfaceOrientation);
#else
    return NO;
#endif
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willAnimateRotationToInterfaceOrientation___int_double
    Func_VOID func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willAnimateRotationToInterfaceOrientation___int_double];
    func(self->wrappedCObj, interfaceOrientation, duration);
#endif
}

- (void) viewWillAppear:(BOOL)animated
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewWillAppear___boolean
    Func_VOB func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewWillAppear___boolean];
    func(self->wrappedCObj, animated);
#endif
}
@end



void org_xmlvm_iphone_UITableViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_int,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITableViewController___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UITableViewController___INIT____int(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setTableView",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTableView",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITableViewController_setTableView___org_xmlvm_iphone_UITableView(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UITableViewController_getTableView__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITableViewController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UITableViewController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UITableViewController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UITableViewController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UITableViewController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UITableViewController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UITableViewController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UITableViewController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UITableViewController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UITableViewController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_org_xmlvm_iphone_UIViewController();
    __TIB_org_xmlvm_iphone_UITableViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewController.vtable, __TIB_org_xmlvm_iphone_UIViewController.vtable, sizeof(__TIB_org_xmlvm_iphone_UIViewController.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UITableViewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UITableViewController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableViewController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewController);
    __TIB_org_xmlvm_iphone_UITableViewController.clazz = __CLASS_org_xmlvm_iphone_UITableViewController;
    __TIB_org_xmlvm_iphone_UITableViewController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UITableViewController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewController);
    __CLASS_org_xmlvm_iphone_UITableViewController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewController_1ARRAY);
    __CLASS_org_xmlvm_iphone_UITableViewController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewController]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UITableViewController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UITableViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewController]
    __DELETE_org_xmlvm_iphone_UIViewController(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewController(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewController()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewController.classInitialized) __INIT_org_xmlvm_iphone_UITableViewController();
    org_xmlvm_iphone_UITableViewController* me = (org_xmlvm_iphone_UITableViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewController));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewController(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewController();
    org_xmlvm_iphone_UITableViewController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITableViewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewController___INIT____int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewController___INIT____int]
    UITableViewControllerWrapper* obj = [[UITableViewControllerWrapper alloc] initWithStyle:n1];
    obj->wrappedCObj = me;
    org_xmlvm_iphone_UITableViewController_INTERNAL_CONSTRUCTOR(me, obj);
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITableViewController);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewController_setTableView___org_xmlvm_iphone_UITableView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewController_setTableView___org_xmlvm_iphone_UITableView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewController_getTableView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewController_getTableView__]
    XMLVM_VAR_THIZ;
    UITableView* tableView = [thiz.tableView retain];
    JAVA_OBJECT jtableView = __NEW_org_xmlvm_iphone_UITableView();
    org_xmlvm_iphone_UITableView_INTERNAL_CONSTRUCTOR(jtableView, tableView);
    XMLVM_FINALIZE(jtableView, __DELETE_org_xmlvm_iphone_UIViewController);
    return jtableView;
    //XMLVM_END_WRAPPER
}

