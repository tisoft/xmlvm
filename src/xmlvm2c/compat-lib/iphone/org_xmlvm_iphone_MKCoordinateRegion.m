#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#include "org_xmlvm_iphone_MKCoordinateSpan.h"

#include "org_xmlvm_iphone_MKCoordinateRegion.h"

__TIB_DEFINITION_org_xmlvm_iphone_MKCoordinateRegion __TIB_org_xmlvm_iphone_MKCoordinateRegion = {
    0, // classInitialized
    "org.xmlvm.iphone.MKCoordinateRegion", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"center",
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKCoordinateRegion, fields.org_xmlvm_iphone_MKCoordinateRegion.center_),
    0,
    "",
    JAVA_NULL},
    {"span",
    &__CLASS_org_xmlvm_iphone_MKCoordinateSpan,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKCoordinateRegion, fields.org_xmlvm_iphone_MKCoordinateRegion.span_),
    0,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_MKCoordinateRegion()
{
    __TIB_org_xmlvm_iphone_MKCoordinateRegion.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKCoordinateRegion.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKCoordinateRegion;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKCoordinateRegion.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKCoordinateRegion.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKCoordinateRegion.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MKCoordinateRegion.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKCoordinateRegion.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKCoordinateRegion = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_MKCoordinateRegion);
    __TIB_org_xmlvm_iphone_MKCoordinateRegion.clazz = __CLASS_org_xmlvm_iphone_MKCoordinateRegion;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKCoordinateRegion]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKCoordinateRegion(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKCoordinateRegion]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKCoordinateRegion()
{
    if (!__TIB_org_xmlvm_iphone_MKCoordinateRegion.classInitialized) __INIT_org_xmlvm_iphone_MKCoordinateRegion();
    org_xmlvm_iphone_MKCoordinateRegion* me = (org_xmlvm_iphone_MKCoordinateRegion*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKCoordinateRegion));
    me->tib = &__TIB_org_xmlvm_iphone_MKCoordinateRegion;
    me->fields.org_xmlvm_iphone_MKCoordinateRegion.center_ = (org_xmlvm_iphone_CLLocationCoordinate2D*) JAVA_NULL;
    me->fields.org_xmlvm_iphone_MKCoordinateRegion.span_ = (org_xmlvm_iphone_MKCoordinateSpan*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKCoordinateRegion]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKCoordinateRegion()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKCoordinateRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_MKCoordinateSpan(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKCoordinateRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_MKCoordinateSpan]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

