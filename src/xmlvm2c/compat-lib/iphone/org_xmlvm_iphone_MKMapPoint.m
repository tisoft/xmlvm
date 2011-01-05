
#include "org_xmlvm_iphone_MKMapPoint.h"

__TIB_DEFINITION_org_xmlvm_iphone_MKMapPoint __TIB_org_xmlvm_iphone_MKMapPoint = {
    0, // classInitialized
    "org.xmlvm.iphone.MKMapPoint", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapPoint;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapPoint_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"x",
    &__CLASS_double_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKMapPoint, fields.org_xmlvm_iphone_MKMapPoint.x_),
    0,
    "",
    JAVA_NULL},
    {"y",
    &__CLASS_double_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKMapPoint, fields.org_xmlvm_iphone_MKMapPoint.y_),
    0,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_MKMapPoint()
{
    __TIB_org_xmlvm_iphone_MKMapPoint.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKMapPoint.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapPoint;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKMapPoint.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKMapPoint.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKMapPoint.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MKMapPoint.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapPoint.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKMapPoint = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_MKMapPoint);
    __TIB_org_xmlvm_iphone_MKMapPoint.clazz = __CLASS_org_xmlvm_iphone_MKMapPoint;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapPoint]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKMapPoint(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapPoint]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapPoint()
{
    if (!__TIB_org_xmlvm_iphone_MKMapPoint.classInitialized) __INIT_org_xmlvm_iphone_MKMapPoint();
    org_xmlvm_iphone_MKMapPoint* me = (org_xmlvm_iphone_MKMapPoint*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapPoint));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapPoint;
    me->fields.org_xmlvm_iphone_MKMapPoint.x_ = 0;
    me->fields.org_xmlvm_iphone_MKMapPoint.y_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapPoint]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapPoint()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKMapPoint___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapPoint___INIT____double_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

