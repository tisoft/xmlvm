#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSIndexPath.h"
#include "org_xmlvm_iphone_UITableView.h"
#include "org_xmlvm_iphone_UITableViewCell.h"

#include "org_xmlvm_iphone_UITableViewDataSource.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewDataSource
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewDataSource

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewDataSource __TIB_org_xmlvm_iphone_UITableViewDataSource = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UITableViewDataSource, // classInitializer
    "org.xmlvm.iphone.UITableViewDataSource", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UITableViewDataSource), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewDataSource;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewDataSource_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewDataSource_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewDataSource_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>
#include "org_xmlvm_iphone_UITableViewCell.h"
#include "org_xmlvm_iphone_NSString.h"


@implementation UITableViewDataSourceWrapper

- (id) initWithDataSource:(JAVA_OBJECT) ds_
{
    [super init];
    dataSource_ = ds_;
    return self;
}

- (UITableViewCell*) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath
{
    org_xmlvm_iphone_UITableView* tableView_ = [self getSource: tableView];
    org_xmlvm_iphone_NSIndexPath* indexPath_ = xmlvm_get_associated_c_object(indexPath);
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath
    Func_OOOO callback = (Func_OOOO) ((org_xmlvm_iphone_UITableViewDataSource*) dataSource_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath];
    org_xmlvm_iphone_UITableViewCell* cell = callback(dataSource_, tableView_, indexPath_);
#else
    org_xmlvm_iphone_UITableViewCell* cell = org_xmlvm_iphone_UITableViewDataSource_cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(dataSource_, tableView_, indexPath_);
#endif
    return [((UITableViewCell*) cell->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) retain];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView*) tableView
{
    org_xmlvm_iphone_UITableView* tableView_ = [self getSource: tableView];
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_numberOfSectionsInTableView___org_xmlvm_iphone_UITableView
    Func_IOO callback = (Func_IOO) ((org_xmlvm_iphone_UITableViewDataSource*) dataSource_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_numberOfSectionsInTableView___org_xmlvm_iphone_UITableView];
    return callback(dataSource_, tableView_);
#else
    return org_xmlvm_iphone_UITableViewDataSource_numberOfSectionsInTableView___org_xmlvm_iphone_UITableView(dataSource_, tableView_);
#endif
}

- (NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger) section;
{
    org_xmlvm_iphone_UITableView* tableView_ = [self getSource: tableView];
    Func_IOOI callback = (Func_IOOI) ((org_xmlvm_iphone_UITableViewDataSource*) dataSource_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_numberOfRowsInSection___org_xmlvm_iphone_UITableView_int];
    return callback(dataSource_, tableView_, section);
}

- (NSString*) tableView:(UITableView *) tableView titleForHeaderInSection:(NSInteger) section
{
    org_xmlvm_iphone_UITableView* tableView_ = [self getSource: tableView];
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_titleForHeaderInSection___org_xmlvm_iphone_UITableView_int
    Func_OOOI callback = (Func_OOOI) ((org_xmlvm_iphone_UITableViewDataSource*) dataSource_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_titleForHeaderInSection___org_xmlvm_iphone_UITableView_int];
    java_lang_String* title_ = callback(dataSource_, tableView_, section);
#else
    java_lang_String* title_ = org_xmlvm_iphone_UITableViewDataSource_titleForHeaderInSection___org_xmlvm_iphone_UITableView_int(dataSource_, tableView_, section);
#endif
    return toNSString(title_);
}

- (void) tableView:(UITableView *) tableView commitEditingStyle:(UITableViewCellEditingStyle) editingStyle forRowAtIndexPath:(NSIndexPath *) indexPath;
{
    org_xmlvm_iphone_UITableView* tableView_ = [self getSource: tableView];
    org_xmlvm_iphone_NSIndexPath* indexPath_ = __NEW_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath_INTERNAL_CONSTRUCTOR(indexPath_, [indexPath retain]);
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath
    Func_VOOIO callback = (Func_VOOIO) ((org_xmlvm_iphone_UITableViewDataSource*) dataSource_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITableViewDataSource_commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath];
    callback(dataSource_, tableView_, editingStyle, indexPath_);
#else
    org_xmlvm_iphone_UITableViewDataSource_commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath(dataSource_, tableView_, editingStyle, indexPath_);
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewDataSource();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITableViewDataSource___INIT___(obj);
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
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITableView,
    &__CLASS_int,
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
    &__CLASS_org_xmlvm_iphone_NSIndexPath,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"numberOfSectionsInTableView",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"titleForHeaderInSection",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"commitEditingStyle",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"canEditRowAtIndexPath",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"canMoveRowAtIndexPath",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"moveRowAtIndexPath",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITableViewDataSource_numberOfSectionsInTableView___org_xmlvm_iphone_UITableView(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UITableViewDataSource_titleForHeaderInSection___org_xmlvm_iphone_UITableView_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_UITableViewDataSource_commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, argsArray[2]);
        break;
    case 3:
        org_xmlvm_iphone_UITableViewDataSource_canEditRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 4:
        org_xmlvm_iphone_UITableViewDataSource_canMoveRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1]);
        break;
    case 5:
        org_xmlvm_iphone_UITableViewDataSource_moveRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath_org_xmlvm_iphone_NSIndexPath(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITableViewDataSource()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UITableViewDataSource);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UITableViewDataSource.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UITableViewDataSource.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UITableViewDataSource);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UITableViewDataSource.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UITableViewDataSource.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UITableViewDataSource.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UITableViewDataSource();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UITableViewDataSource()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITableViewDataSource.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewDataSource;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewDataSource.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UITableViewDataSource.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewDataSource.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UITableViewDataSource.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewDataSource.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewDataSource.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewDataSource.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewDataSource.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewDataSource.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewDataSource.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewDataSource.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableViewDataSource = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewDataSource);
    __TIB_org_xmlvm_iphone_UITableViewDataSource.clazz = __CLASS_org_xmlvm_iphone_UITableViewDataSource;
    __TIB_org_xmlvm_iphone_UITableViewDataSource.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UITableViewDataSource_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewDataSource);
    __CLASS_org_xmlvm_iphone_UITableViewDataSource_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewDataSource_1ARRAY);
    __CLASS_org_xmlvm_iphone_UITableViewDataSource_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewDataSource_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewDataSource]

    // NSIndexPath __WRAPPER_CREATOR is required for the delegate wrapper
    if (!__TIB_org_xmlvm_iphone_NSIndexPath.classInitialized) __INIT_org_xmlvm_iphone_NSIndexPath();

    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UITableViewDataSource.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UITableViewDataSource(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewDataSource]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewDataSource(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewDataSource]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewDataSource()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewDataSource.classInitialized) __INIT_org_xmlvm_iphone_UITableViewDataSource();
    org_xmlvm_iphone_UITableViewDataSource* me = (org_xmlvm_iphone_UITableViewDataSource*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewDataSource));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewDataSource;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewDataSource(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewDataSource]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewDataSource()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewDataSource();
    org_xmlvm_iphone_UITableViewDataSource___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITableViewDataSource___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDataSource___INIT___]
    UITableViewDataSourceWrapper* wrapper = [[UITableViewDataSourceWrapper alloc] initWithDataSource: me];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrapper);
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITableViewDataSource_numberOfSectionsInTableView___org_xmlvm_iphone_UITableView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDataSource_numberOfSectionsInTableView___org_xmlvm_iphone_UITableView]
    return 1;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewDataSource_titleForHeaderInSection___org_xmlvm_iphone_UITableView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDataSource_titleForHeaderInSection___org_xmlvm_iphone_UITableView_int]
    return JAVA_NULL;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewDataSource_commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDataSource_commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath]
    
    // Intentionally left empty
    
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableViewDataSource_canEditRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDataSource_canEditRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableViewDataSource_canMoveRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDataSource_canMoveRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewDataSource_moveRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath_org_xmlvm_iphone_NSIndexPath(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewDataSource_moveRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath_org_xmlvm_iphone_NSIndexPath]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

