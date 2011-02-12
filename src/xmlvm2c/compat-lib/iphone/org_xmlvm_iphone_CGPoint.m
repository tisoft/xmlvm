#include "xmlvm.h"
#include "java_lang_Object.h"

#include "org_xmlvm_iphone_CGPoint.h"

#define XMLVM_CURRENT_CLASS_NAME CGPoint
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGPoint

__TIB_DEFINITION_org_xmlvm_iphone_CGPoint __TIB_org_xmlvm_iphone_CGPoint = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CGPoint, // classInitializer
    "org.xmlvm.iphone.CGPoint", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPoint;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPoint_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

CGPoint toCGPoint(JAVA_OBJECT point)
{
    org_xmlvm_iphone_CGPoint* p = point;
    return CGPointMake(p->fields.org_xmlvm_iphone_CGPoint.x_, p->fields.org_xmlvm_iphone_CGPoint.y_);
}

JAVA_OBJECT fromCGPoint(CGPoint point)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGPoint();
    org_xmlvm_iphone_CGPoint___INIT____float_float(obj, point.x, point.y);
    return obj;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"x",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CGPoint, fields.org_xmlvm_iphone_CGPoint.x_),
    0,
    "",
    JAVA_NULL},
    {"y",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CGPoint, fields.org_xmlvm_iphone_CGPoint.y_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGPoint();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CGPoint___INIT____org_xmlvm_iphone_CGPoint(obj, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_CGPoint___INIT____float_float(obj, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"toString",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"equals",
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
        org_xmlvm_iphone_CGPoint_toString__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_CGPoint_equals___java_lang_Object(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGPoint()
{
    __TIB_org_xmlvm_iphone_CGPoint.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CGPoint.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGPoint;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGPoint.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CGPoint.vtable[7] = (VTABLE_PTR) &org_xmlvm_iphone_CGPoint_toString__;
    __TIB_org_xmlvm_iphone_CGPoint.vtable[1] = (VTABLE_PTR) &org_xmlvm_iphone_CGPoint_equals___java_lang_Object;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGPoint.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGPoint.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_CGPoint.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGPoint.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGPoint.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGPoint.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGPoint.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGPoint.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGPoint.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGPoint.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGPoint = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGPoint);
    __TIB_org_xmlvm_iphone_CGPoint.clazz = __CLASS_org_xmlvm_iphone_CGPoint;
    __CLASS_org_xmlvm_iphone_CGPoint_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGPoint, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGPoint]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGPoint(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGPoint]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPoint()
{
    if (!__TIB_org_xmlvm_iphone_CGPoint.classInitialized) __INIT_org_xmlvm_iphone_CGPoint();
    org_xmlvm_iphone_CGPoint* me = (org_xmlvm_iphone_CGPoint*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGPoint));
    me->tib = &__TIB_org_xmlvm_iphone_CGPoint;
    me->fields.org_xmlvm_iphone_CGPoint.x_ = 0;
    me->fields.org_xmlvm_iphone_CGPoint.y_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGPoint]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPoint()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CGPoint___INIT____org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPoint___INIT____org_xmlvm_iphone_CGPoint]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGPoint___INIT____float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPoint___INIT____float_float]
	org_xmlvm_iphone_CGPoint* thiz = me;
    thiz->fields.org_xmlvm_iphone_CGPoint.x_ = n1;
    thiz->fields.org_xmlvm_iphone_CGPoint.y_ = n2;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPoint_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPoint_toString__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGPoint_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPoint_equals___java_lang_Object]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

