#include "xmlvm.h"
#include "org_xmlvm_iphone_UITextField.h"
#include "org_xmlvm_iphone_NSRange.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITextFieldDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UITextFieldDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITextFieldDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UITextFieldDelegate __TIB_org_xmlvm_iphone_UITextFieldDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITextFieldDelegate, // classInitializer
    "org.xmlvm.iphone.UITextFieldDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UITextFieldDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextFieldDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextFieldDelegate_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

#include "org_xmlvm_iphone_NSRange.h"
#include "org_xmlvm_iphone_NSString.h"


@implementation UITextFieldDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
{
    [super init];
    self->delegate = delegate_;
    return self;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    org_xmlvm_iphone_UITextField* textField_ = [self getSource: textField];
    Func_BOO func = (Func_BOO) self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField];
    return (*func)(self->delegate, textField_);
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    org_xmlvm_iphone_UITextField* textField_ = [self getSource: textField];
    Func_VOO func = (Func_VOO) self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField];
    (*func)(self->delegate, textField_);
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    org_xmlvm_iphone_UITextField* textField_ = [self getSource: textField];
    Func_BOO func = (Func_BOO) self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField];
    return (*func)(self->delegate, textField_);
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    org_xmlvm_iphone_UITextField* textField_ = [self getSource: textField];
    Func_VOO func = (Func_VOO) self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField];
    (*func)(self->delegate, textField_);
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    org_xmlvm_iphone_UITextField* textField_ = [self getSource: textField];
    Func_BOOOO func = (Func_BOOOO) self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String];
    JAVA_OBJECT range_ = fromNSRange(range);
    JAVA_OBJECT string_ = toJavaString(string);
    return (*func)(self->delegate, textField_, range_, string_);
}

- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    org_xmlvm_iphone_UITextField* textField_ = [self getSource: textField];
    Func_BOO func = (Func_BOO) self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField];
    return (*func)(self->delegate, textField_);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    org_xmlvm_iphone_UITextField* textField_ = [self getSource: textField];
    Func_BOO func = (Func_BOO) self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField];
    return (*func)(self->delegate, textField_);
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITextFieldDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITextFieldDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITextField,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITextField,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITextField,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITextField,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITextField,
    &__CLASS_org_xmlvm_iphone_NSRange,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITextField,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITextField,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"textFieldShouldBeginEditing",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"textFieldDidBeginEditing",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"textFieldShouldEndEditing",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"textFieldDidEndEditing",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"textFieldShouldChangeCharactersInRange",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"textFieldShouldClear",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"textFieldShouldReturn",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 5:
        org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITextFieldDelegate()
{
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextFieldDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITextFieldDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITextFieldDelegate);
    __TIB_org_xmlvm_iphone_UITextFieldDelegate.clazz = __CLASS_org_xmlvm_iphone_UITextFieldDelegate;
    __CLASS_org_xmlvm_iphone_UITextFieldDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITextFieldDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextFieldDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITextFieldDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextFieldDelegate]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextFieldDelegate(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextFieldDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UITextFieldDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITextFieldDelegate();
    org_xmlvm_iphone_UITextFieldDelegate* me = (org_xmlvm_iphone_UITextFieldDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextFieldDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UITextFieldDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextFieldDelegate(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextFieldDelegate]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITextFieldDelegate);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextFieldDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITextFieldDelegate();
    org_xmlvm_iphone_UITextFieldDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITextFieldDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate___INIT___]
    UITextFieldDelegateWrapper* obj = [[UITextFieldDelegateWrapper alloc] initWithDelegate:me];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField]
    return 1;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField]
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField]
    return 1;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField]
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String]
    return 1;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField]
    return 1;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField]
    return 1;
    //XMLVM_END_WRAPPER
}

