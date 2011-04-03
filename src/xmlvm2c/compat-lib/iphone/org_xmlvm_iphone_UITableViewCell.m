#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITableViewCell.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewCell
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewCell

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewCell __TIB_org_xmlvm_iphone_UITableViewCell = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITableViewCell, // classInitializer
    "org.xmlvm.iphone.UITableViewCell", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UITableViewCell), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCell;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCell_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCell_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCell_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIKit.h>

@interface UITableViewCellWrapper : UITableViewCell
{
    org_xmlvm_iphone_UITableViewCell* wrappedCObj;
}
- (void) layoutSubviews;
- (void) superLayoutSubviews;
- (void) setWrappedCObj: (org_xmlvm_iphone_UITableViewCell*) obj;
@end

@implementation UITableViewCellWrapper : UITableViewCell

- (void) setWrappedCObj: (org_xmlvm_iphone_UITableViewCell*) obj
{
    self->wrappedCObj = obj;
}

- (void) layoutSubviews
{
    Func_VO layoutSubviews = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_layoutSubviews__];
    layoutSubviews(self->wrappedCObj);
}

- (void) superLayoutSubviews
{
    [super layoutSubviews];
}

@end

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_int,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewCell();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITableViewCell___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UITableViewCell___INIT____int_java_lang_String(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setSelected",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isSelected",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getEditingStyle",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"layoutSubviews",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getContentView",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBackgroundView",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBackgroundView",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectedBackgroundView",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSelectedBackgroundView",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTextLabel",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDetailTextLabel",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getImageView",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getAccessoryView",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAccessoryView",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getReuseIdentifier",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSelectionStyle",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectionStyle",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITableViewCell_setSelected___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 1:
        org_xmlvm_iphone_UITableViewCell_isSelected__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UITableViewCell_getEditingStyle__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UITableViewCell_layoutSubviews__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UITableViewCell_getContentView__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UITableViewCell_getBackgroundView__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UITableViewCell_getTextLabel__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_UITableViewCell_getImageView__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UITableViewCell_getAccessoryView__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 14:
        org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_UITableViewCell_getSelectionStyle__(receiver);
        break;
    case 16:
        org_xmlvm_iphone_UITableViewCell_setSelectionStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITableViewCell()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UITableViewCell);
    if (!__TIB_org_xmlvm_iphone_UITableViewCell.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UITableViewCell();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UITableViewCell);
}

void __INIT_IMPL_org_xmlvm_iphone_UITableViewCell()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCell.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UITableViewCell.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIView();
        __TIB_org_xmlvm_iphone_UITableViewCell.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCell;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewCell.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[65] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setSelected___boolean;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[66] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_isSelected__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[67] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getEditingStyle__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_layoutSubviews__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[68] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getContentView__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getBackgroundView__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getTextLabel__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getImageView__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getAccessoryView__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getSelectionStyle__;
        __TIB_org_xmlvm_iphone_UITableViewCell.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setSelectionStyle___int;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UITableViewCell.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UITableViewCell.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_UITableViewCell.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewCell.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITableViewCell.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UITableViewCell.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewCell.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITableViewCell.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UITableViewCell.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewCell.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UITableViewCell = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewCell);
        __TIB_org_xmlvm_iphone_UITableViewCell.clazz = __CLASS_org_xmlvm_iphone_UITableViewCell;
        __CLASS_org_xmlvm_iphone_UITableViewCell_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCell, 3);
        __CLASS_org_xmlvm_iphone_UITableViewCell_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCell, 2);
        __CLASS_org_xmlvm_iphone_UITableViewCell_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCell, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCell]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UITableViewCell.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UITableViewCell(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCell]
    __DELETE_org_xmlvm_iphone_UIView(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewCell(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCell()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCell.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCell();
    org_xmlvm_iphone_UITableViewCell* me = (org_xmlvm_iphone_UITableViewCell*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCell));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewCell;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewCell(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCell]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITableViewCell);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCell()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewCell();
    org_xmlvm_iphone_UITableViewCell___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITableViewCell___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell___INIT___]
    UITableViewCellWrapper* cell = [[UITableViewCellWrapper alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: nil];
    org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(me, cell);
    
    XMLVM_VAR_THIZ;
    jthiz->fields.org_xmlvm_iphone_UITableViewCell.jcontentView = JAVA_NULL;
    [cell setWrappedCObj: jthiz];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell___INIT____int_java_lang_String(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell___INIT____int_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setSelected___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setSelected___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableViewCell_isSelected__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_isSelected__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITableViewCell_getEditingStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getEditingStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_layoutSubviews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_layoutSubviews__]
    XMLVM_VAR_THIZ;
    
    [((UITableViewCellWrapper*) thiz) superLayoutSubviews];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getContentView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getContentView__]
    XMLVM_VAR_THIZ;
    
    if (jthiz->fields.org_xmlvm_iphone_UITableViewCell.jcontentView == JAVA_NULL) {
        UIView* contentView = [thiz.contentView retain];
        org_xmlvm_iphone_UIView* v = __NEW_org_xmlvm_iphone_UIView();
        org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(v, contentView);
        jthiz->fields.org_xmlvm_iphone_UITableViewCell.jcontentView = v;
    }

    return jthiz->fields.org_xmlvm_iphone_UITableViewCell.jcontentView;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getBackgroundView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getBackgroundView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getTextLabel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getTextLabel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getImageView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getImageView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getAccessoryView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getAccessoryView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITableViewCell_getSelectionStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getSelectionStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setSelectionStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setSelectionStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

