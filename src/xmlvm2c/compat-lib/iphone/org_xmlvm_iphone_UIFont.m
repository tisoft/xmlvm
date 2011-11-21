#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIFont.h"

#define XMLVM_CURRENT_CLASS_NAME UIFont
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIFont

__TIB_DEFINITION_org_xmlvm_iphone_UIFont __TIB_org_xmlvm_iphone_UIFont = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIFont, // classInitializer
    "org.xmlvm.iphone.UIFont", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIFont), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>

#include "org_xmlvm_iphone_NSString.h"

void org_xmlvm_iphone_UIFont_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    NSString* name = NSStringFromClass([obj class]);
    if ([obj class] == [UIFont class] || ([name isEqual:@"UICFFont"])) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_UIFont();
        org_xmlvm_iphone_UIFont_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
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
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIFont);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIFont.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIFont.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIFont);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIFont.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIFont.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIFont();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIFont()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIFont.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIFont;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIFont.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIFont.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIFont.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

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
    __TIB_org_xmlvm_iphone_UIFont.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIFont_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIFont);
    __CLASS_org_xmlvm_iphone_UIFont_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIFont_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIFont_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIFont_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIFont]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIFont.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIFont(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIFont]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIFont(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIFont]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIFont()
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    org_xmlvm_iphone_UIFont* me = (org_xmlvm_iphone_UIFont*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIFont));
    me->tib = &__TIB_org_xmlvm_iphone_UIFont;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIFont(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIFont]
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
    JAVA_OBJECT jfont = xmlvm_get_associated_c_object(font);
    [p release];
    return jfont;
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
    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT(size, n1);
    
    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];
    UIFont* font = [thiz fontWithSize: n1];
    JAVA_OBJECT jfont = xmlvm_get_associated_c_object(font);
    [p release];
    return jfont;
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
    JAVA_OBJECT jfont = xmlvm_get_associated_c_object(font);
    [p release];
    [name release];
    return jfont;
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
    return [UIFont labelFontSize];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_familyName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_familyName__]
    XMLVM_VAR_THIZ;
    return fromNSString(thiz.familyName);
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
    XMLVM_VAR_THIZ;
    return thiz.pointSize;
    //XMLVM_END_WRAPPER
}

