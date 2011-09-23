#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_UIFont.h"

#include "org_xmlvm_iphone_NSString.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME NSString
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSString

__TIB_DEFINITION_org_xmlvm_iphone_NSString __TIB_org_xmlvm_iphone_NSString = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSString, // classInitializer
    "org.xmlvm.iphone.NSString", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSString), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSString;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSString_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSString_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSString_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "java_net_URL.h"
#include "java_io_Reader.h"

#import <UIKit/UIFont.h>
#import <UIKit/UIStringDrawing.h>


static JAVA_OBJECT utf8_constant = JAVA_NULL;

NSString* toNSString(JAVA_OBJECT o)
{
    if (o == JAVA_NULL) {
        return nil;
    }
    if (utf8_constant == JAVA_NULL) {
        utf8_constant = xmlvm_create_java_string("UTF-8");
    }
	java_lang_String* s = (java_lang_String*) o;
    org_xmlvm_runtime_XMLVMArray* utf8 = java_lang_String_getBytes___java_lang_String(o, utf8_constant);
	JAVA_INT length = utf8->fields.org_xmlvm_runtime_XMLVMArray.length_;
	JAVA_ARRAY_BYTE* data = (JAVA_ARRAY_BYTE*) utf8->fields.org_xmlvm_runtime_XMLVMArray.array_;
    return [[NSString alloc] initWithBytes:data length:length encoding:NSUTF8StringEncoding];
}

JAVA_OBJECT toJavaString(NSString* str)
{
    if (str == nil) {
        return JAVA_NULL;
    }
    if (utf8_constant == JAVA_NULL) {
        utf8_constant = xmlvm_create_java_string("UTF-8");
    }
    java_lang_String* s = __NEW_java_lang_String();
    const char* chars = [str UTF8String];
    int length = strlen(chars);
    org_xmlvm_runtime_XMLVMArray* data = XMLVMArray_createSingleDimensionWithData(__CLASS_byte, length, chars);
    java_lang_String___INIT____byte_1ARRAY_java_lang_String(s, data, utf8_constant);
    return s;
}
    
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSString();
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
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_int,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_int,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
    &__CLASS_int,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_CGPoint,
    &__CLASS_org_xmlvm_iphone_UIFont,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_UIFont,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_UIFont,
    &__CLASS_org_xmlvm_iphone_CGSize,
    &__CLASS_int,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_boolean,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"stringWithContentsOfFile",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stringWithContentsOfURL",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stringWithContentsOfURL",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dataUsingEncoding",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stringByAddingPercentEscapesUsingEncoding",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"componentsSeparatedByString",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"initWithData",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"drawAtPoint",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"sizeWithFont",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"sizeWithFont",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"writeToFile",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSString_stringWithContentsOfFile___java_lang_String(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL(argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_NSString_dataUsingEncoding___java_lang_String_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 4:
        org_xmlvm_iphone_NSString_stringByAddingPercentEscapesUsingEncoding___java_lang_String_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 5:
        org_xmlvm_iphone_NSString_componentsSeparatedByString___java_lang_String_java_lang_String(argsArray[0], argsArray[1]);
        break;
    case 6:
        org_xmlvm_iphone_NSString_initWithData___org_xmlvm_iphone_NSData_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 7:
        org_xmlvm_iphone_NSString_drawAtPoint___java_lang_String_org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIFont(argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 8:
        org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont(argsArray[0], argsArray[1]);
        break;
    case 9:
        org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont_org_xmlvm_iphone_CGSize_int(argsArray[0], argsArray[1], argsArray[2], ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    case 10:
        org_xmlvm_iphone_NSString_writeToFile___java_lang_String_java_lang_String_boolean_int(argsArray[0], argsArray[1], ((java_lang_Boolean*) argsArray[2])->fields.java_lang_Boolean.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSString()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSString);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSString.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSString.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSString);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSString.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSString.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSString.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSString();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSString()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSString.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSString;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSString.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSString.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSString.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSString.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSString.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSString.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSString.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSString.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSString.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSString.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSString.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSString = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSString);
    __TIB_org_xmlvm_iphone_NSString.clazz = __CLASS_org_xmlvm_iphone_NSString;
    __TIB_org_xmlvm_iphone_NSString.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSString_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSString);
    __CLASS_org_xmlvm_iphone_NSString_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSString_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSString_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSString_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSString]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSString.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSString(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSString]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSString(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSString]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSString()
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    org_xmlvm_iphone_NSString* me = (org_xmlvm_iphone_NSString*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSString));
    me->tib = &__TIB_org_xmlvm_iphone_NSString;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSString(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSString]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSString()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfFile___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_dataUsingEncoding___java_lang_String_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_dataUsingEncoding___java_lang_String_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringByAddingPercentEscapesUsingEncoding___java_lang_String_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringByAddingPercentEscapesUsingEncoding___java_lang_String_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_componentsSeparatedByString___java_lang_String_java_lang_String(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_componentsSeparatedByString___java_lang_String_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_initWithData___org_xmlvm_iphone_NSData_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_initWithData___org_xmlvm_iphone_NSData_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSString_drawAtPoint___java_lang_String_org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIFont(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_drawAtPoint___java_lang_String_org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIFont]
    XMLVM_VAR_NSString(str, n1);
    XMLVM_VAR_CGPoint(point, n2);
    XMLVM_VAR_IOS(UIFont, font, n3);

    [str drawAtPoint: point withFont: font];
    [str release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont]
    XMLVM_VAR_NSString(str, n1);
    XMLVM_VAR_IOS(UIFont, font, n2);
    CGSize size_ = [str sizeWithFont:font];
    [str release];
    org_xmlvm_iphone_CGSize* size = __NEW_org_xmlvm_iphone_CGSize();
    org_xmlvm_iphone_CGSize___INIT____float_float(size, size_.width, size_.height);
    return size;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont_org_xmlvm_iphone_CGSize_int(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont_org_xmlvm_iphone_CGSize_int]
    NSString* text = toNSString(n1);
    org_xmlvm_iphone_UIFont* font = n2;
    UIFont* font_ = font->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    org_xmlvm_iphone_CGSize* constraint = n3;
    CGSize constraint_ = CGSizeMake(constraint->fields.org_xmlvm_iphone_CGSize.width_, constraint->fields.org_xmlvm_iphone_CGSize.height_);
    JAVA_INT lineBreakMode = n4;
    CGSize size_ = CGSizeMake(0, 0);
    if (text != nil) {
        size_ = [text sizeWithFont:font_ constrainedToSize:constraint_ lineBreakMode:lineBreakMode];
    }
    [text release];
    org_xmlvm_iphone_CGSize* size = __NEW_org_xmlvm_iphone_CGSize();
    org_xmlvm_iphone_CGSize___INIT____float_float(size, size_.width, size_.height);
    return size;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSString_writeToFile___java_lang_String_java_lang_String_boolean_int(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3, JAVA_INT n4)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_writeToFile___java_lang_String_java_lang_String_boolean_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

