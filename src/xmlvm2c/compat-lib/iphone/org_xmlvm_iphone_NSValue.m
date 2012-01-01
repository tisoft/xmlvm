#include "xmlvm.h"
#include "java_lang_Object.h"
#include "org_xmlvm_iphone_CGAffineTransform.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_NSRange.h"
#include "org_xmlvm_iphone_UIEdgeInsets.h"

#include "org_xmlvm_iphone_NSValue.h"

#define XMLVM_CURRENT_CLASS_NAME NSValue
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSValue

__TIB_DEFINITION_org_xmlvm_iphone_NSValue __TIB_org_xmlvm_iphone_NSValue = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSValue, // classInitializer
    "org.xmlvm.iphone.NSValue", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSValue), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSValue;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSValue_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSValue_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSValue_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_NSValue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    NSString* name = NSStringFromClass([obj class]);
    if ([obj class] == [NSValue class] || [name isEqual:@"NSConcreteValue"]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSValue();
        org_xmlvm_iphone_NSValue_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_byte_1ARRAY,
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSValue();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSValue___INIT____byte_1ARRAY_byte_1ARRAY(obj, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_NSValue___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSRange,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_byte_1ARRAY,
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_byte_1ARRAY,
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGSize,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGAffineTransform,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIEdgeInsets,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSValue,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"valueWithRange",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSRange;)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"valueWithBytes",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([B[B)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"value",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([B[B)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"valueWithNonretainedObject",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"valueWithPointer",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([B)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"valueWithCGPoint",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"valueWithCGSize",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGSize;)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"valueWithCGRect",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"valueWithCGAffineTransform",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGAffineTransform;)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"valueWithUIEdgeInsets",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIEdgeInsets;)Lorg/xmlvm/iphone/NSValue;",
    JAVA_NULL,
    JAVA_NULL},
    {"rangeValue",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSRange;",
    JAVA_NULL,
    JAVA_NULL},
    {"getValue",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([B)V",
    JAVA_NULL,
    JAVA_NULL},
    {"objCType",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()[B",
    JAVA_NULL,
    JAVA_NULL},
    {"nonretainedObjectValue",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"pointerValue",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()[B",
    JAVA_NULL,
    JAVA_NULL},
    {"isEqualToValue",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSValue;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"CGPointValue",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGPoint;",
    JAVA_NULL,
    JAVA_NULL},
    {"CGSizeValue",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGSize;",
    JAVA_NULL,
    JAVA_NULL},
    {"CGRectValue",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"CGAffineTransformValue",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"UIEdgeInsetsValue",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIEdgeInsets;",
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
        org_xmlvm_iphone_NSValue_valueWithRange___org_xmlvm_iphone_NSRange(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSValue_valueWithBytes___byte_1ARRAY_byte_1ARRAY(argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_NSValue_value___byte_1ARRAY_byte_1ARRAY(argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_NSValue_valueWithNonretainedObject___java_lang_Object(argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_NSValue_valueWithPointer___byte_1ARRAY(argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_NSValue_valueWithCGPoint___org_xmlvm_iphone_CGPoint(argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_NSValue_valueWithCGSize___org_xmlvm_iphone_CGSize(argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_NSValue_valueWithCGRect___org_xmlvm_iphone_CGRect(argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_NSValue_valueWithCGAffineTransform___org_xmlvm_iphone_CGAffineTransform(argsArray[0]);
        break;
    case 9:
        org_xmlvm_iphone_NSValue_valueWithUIEdgeInsets___org_xmlvm_iphone_UIEdgeInsets(argsArray[0]);
        break;
    case 10:
        org_xmlvm_iphone_NSValue_rangeValue__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_NSValue_getValue___byte_1ARRAY(receiver, argsArray[0]);
        break;
    case 12:
        org_xmlvm_iphone_NSValue_objCType__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_NSValue_nonretainedObjectValue__(receiver);
        break;
    case 14:
        org_xmlvm_iphone_NSValue_pointerValue__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_NSValue_isEqualToValue___org_xmlvm_iphone_NSValue(receiver, argsArray[0]);
        break;
    case 16:
        org_xmlvm_iphone_NSValue_CGPointValue__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_NSValue_CGSizeValue__(receiver);
        break;
    case 18:
        org_xmlvm_iphone_NSValue_CGRectValue__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_NSValue_CGAffineTransformValue__(receiver);
        break;
    case 20:
        org_xmlvm_iphone_NSValue_UIEdgeInsetsValue__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSValue()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSValue);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSValue.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSValue.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSValue);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSValue.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSValue.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSValue();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSValue()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSValue.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSValue;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSValue.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSValue.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSValue.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSValue.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSValue.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSValue.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSValue.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSValue.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSValue.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSValue.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSValue.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSValue = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSValue);
    __TIB_org_xmlvm_iphone_NSValue.clazz = __CLASS_org_xmlvm_iphone_NSValue;
    __TIB_org_xmlvm_iphone_NSValue.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSValue_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSValue);
    __CLASS_org_xmlvm_iphone_NSValue_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSValue_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSValue_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSValue_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSValue]

    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);

    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSValue.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSValue(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSValue]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSValue(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSValue]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSValue()
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    org_xmlvm_iphone_NSValue* me = (org_xmlvm_iphone_NSValue*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSValue));
    me->tib = &__TIB_org_xmlvm_iphone_NSValue;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSValue(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSValue]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSValue()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSValue();
    org_xmlvm_iphone_NSValue___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithRange___org_xmlvm_iphone_NSRange(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithRange___org_xmlvm_iphone_NSRange]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithBytes___byte_1ARRAY_byte_1ARRAY(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithBytes___byte_1ARRAY_byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_value___byte_1ARRAY_byte_1ARRAY(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_value___byte_1ARRAY_byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithNonretainedObject___java_lang_Object(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithNonretainedObject___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithPointer___byte_1ARRAY(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithPointer___byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithCGPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithCGPoint___org_xmlvm_iphone_CGPoint]
    return xmlvm_get_associated_c_object([NSValue valueWithCGPoint:toCGPoint(n1)]);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithCGSize___org_xmlvm_iphone_CGSize(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithCGSize___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithCGRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithCGRect___org_xmlvm_iphone_CGRect]
    return xmlvm_get_associated_c_object([NSValue valueWithCGRect:toCGRect(n1)]);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithCGAffineTransform___org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithCGAffineTransform___org_xmlvm_iphone_CGAffineTransform]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_valueWithUIEdgeInsets___org_xmlvm_iphone_UIEdgeInsets(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSValue.classInitialized) __INIT_org_xmlvm_iphone_NSValue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_valueWithUIEdgeInsets___org_xmlvm_iphone_UIEdgeInsets]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSValue___INIT____byte_1ARRAY_byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue___INIT____byte_1ARRAY_byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSValue___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_rangeValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_rangeValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSValue_getValue___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_getValue___byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_objCType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_objCType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_nonretainedObjectValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_nonretainedObjectValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_pointerValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_pointerValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSValue_isEqualToValue___org_xmlvm_iphone_NSValue(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_isEqualToValue___org_xmlvm_iphone_NSValue]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_CGPointValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_CGPointValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_CGSizeValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_CGSizeValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_CGRectValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_CGRectValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_CGAffineTransformValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_CGAffineTransformValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSValue_UIEdgeInsetsValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSValue_UIEdgeInsetsValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

