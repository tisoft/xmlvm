#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIFont.h"

#define XMLVM_CURRENT_CLASS_NAME UIFont
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIFont

__TIB_DEFINITION_org_xmlvm_iphone_UIFont __TIB_org_xmlvm_iphone_UIFont = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIFont, // classInitializer
    "org.xmlvm.iphone.UIFont", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>

#include "org_xmlvm_iphone_NSString.h"

void org_xmlvm_iphone_UIFont_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIFont();
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
    &__CLASS_float,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_float,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"systemFontOfSize",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"boldSystemFontOfSize",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"italicSystemFontOfSize",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"fontWithSize",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"fontWithNameSize",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"buttonFontSize",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"labelFontSize",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"familyName",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"fontName",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"pointSize",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIFont_systemFontOfSize___float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 1:
        org_xmlvm_iphone_UIFont_boldSystemFontOfSize___float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 2:
        org_xmlvm_iphone_UIFont_italicSystemFontOfSize___float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 3:
        org_xmlvm_iphone_UIFont_fontWithSize___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 4:
        org_xmlvm_iphone_UIFont_fontWithNameSize___java_lang_String_float(argsArray[0], ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 5:
        org_xmlvm_iphone_UIFont_buttonFontSize__();
        break;
    case 6:
        org_xmlvm_iphone_UIFont_labelFontSize__();
        break;
    case 7:
        org_xmlvm_iphone_UIFont_familyName__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_UIFont_fontName__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UIFont_pointSize__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIFont()
{
    __TIB_org_xmlvm_iphone_UIFont.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIFont.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIFont;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIFont.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIFont.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_fontWithSize___float;
    __TIB_org_xmlvm_iphone_UIFont.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_familyName__;
    __TIB_org_xmlvm_iphone_UIFont.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_fontName__;
    __TIB_org_xmlvm_iphone_UIFont.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_pointSize__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIFont.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIFont.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIFont.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIFont.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIFont.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIFont.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIFont.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIFont.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIFont.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIFont.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIFont = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIFont);
    __TIB_org_xmlvm_iphone_UIFont.clazz = __CLASS_org_xmlvm_iphone_UIFont;
    __CLASS_org_xmlvm_iphone_UIFont_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIFont, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIFont]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIFont(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIFont]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIFont()
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    org_xmlvm_iphone_UIFont* me = (org_xmlvm_iphone_UIFont*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIFont));
    me->tib = &__TIB_org_xmlvm_iphone_UIFont;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIFont]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIFont);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIFont()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_systemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_systemFontOfSize___float]
    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];
    UIFont* font = [UIFont systemFontOfSize: n1];
    [font retain];
    [p release];
    
    org_xmlvm_iphone_UIFont* font_ = __NEW_org_xmlvm_iphone_UIFont();
    org_xmlvm_iphone_UIFont_INTERNAL_CONSTRUCTOR(font_, font);
    return font_;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_boldSystemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_boldSystemFontOfSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_italicSystemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_italicSystemFontOfSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_fontWithSize___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_fontWithSize___float]
    org_xmlvm_iphone_UIFont* thiz_ = me;
    UIFont* thiz = thiz_->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    
    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];
    UIFont* font = [thiz fontWithSize: n1];
    [font retain];
    [p release];
    
    org_xmlvm_iphone_UIFont* font_ = __NEW_org_xmlvm_iphone_UIFont();
    org_xmlvm_iphone_UIFont_INTERNAL_CONSTRUCTOR(font_, font);
    return font_;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_fontWithNameSize___java_lang_String_float(JAVA_OBJECT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_fontWithNameSize___java_lang_String_float]
    java_lang_String* name_ = n1;
    NSString* name = toNSString(name_);
    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];
    UIFont* font = [UIFont fontWithName: name size: n2];
    [font retain];
    [p release];
    
    org_xmlvm_iphone_UIFont* font_ = __NEW_org_xmlvm_iphone_UIFont();
    org_xmlvm_iphone_UIFont_INTERNAL_CONSTRUCTOR(font_, font);
    return font_;
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIFont_buttonFontSize__()
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_buttonFontSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIFont_labelFontSize__()
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_labelFontSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_familyName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_familyName__]
    org_xmlvm_iphone_UIFont* thiz_ = me;
    UIFont* thiz = thiz_->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    return toJavaString(thiz.familyName);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_fontName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_fontName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIFont_pointSize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_pointSize__]
    org_xmlvm_iphone_UIFont* thiz_ = me;
    UIFont* thiz = thiz_->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    return thiz.pointSize;
    //XMLVM_END_WRAPPER
}

