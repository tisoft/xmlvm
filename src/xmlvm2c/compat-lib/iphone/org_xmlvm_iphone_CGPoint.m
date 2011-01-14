#include "java_lang_String.h"

#include "org_xmlvm_iphone_CGPoint.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGPoint __TIB_org_xmlvm_iphone_CGPoint = {
    0, // classInitialized
    "org.xmlvm.iphone.CGPoint", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPoint;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPoint_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

JAVA_OBJECT fromCGPoint(CGPoint point)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGPoint();
    org_xmlvm_iphone_CGPoint___INIT____float_float(obj, point.x, point.y);
    return obj;
}

//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"x",
    &__CLASS_float_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CGPoint, fields.org_xmlvm_iphone_CGPoint.x_),
    0,
    "",
    JAVA_NULL},
    {"y",
    &__CLASS_float_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CGPoint, fields.org_xmlvm_iphone_CGPoint.y_),
    0,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_CGPoint()
{
    __TIB_org_xmlvm_iphone_CGPoint.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CGPoint.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGPoint;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGPoint.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CGPoint.vtable[4] = (VTABLE_PTR) &org_xmlvm_iphone_CGPoint_toString__;
    __TIB_org_xmlvm_iphone_CGPoint.vtable[2] = (VTABLE_PTR) &org_xmlvm_iphone_CGPoint_equals___java_lang_Object;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGPoint.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGPoint.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_CGPoint.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGPoint.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGPoint = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_CGPoint);
    __TIB_org_xmlvm_iphone_CGPoint.clazz = __CLASS_org_xmlvm_iphone_CGPoint;

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

