#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_NSDateComponents.h"

#include "org_xmlvm_iphone_NSCalendar.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSCalendar __TIB_org_xmlvm_iphone_NSCalendar = {
    0, // classInitialized
    "org.xmlvm.iphone.NSCalendar", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendar;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSCalendar_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSCalendar();
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

void __INIT_org_xmlvm_iphone_NSCalendar()
{
    __TIB_org_xmlvm_iphone_NSCalendar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSCalendar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSCalendar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSCalendar.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSCalendar.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate;
    __TIB_org_xmlvm_iphone_NSCalendar.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int;
    __TIB_org_xmlvm_iphone_NSCalendar.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int;
    __TIB_org_xmlvm_iphone_NSCalendar.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSCalendar.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSCalendar.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSCalendar.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSCalendar.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSCalendar.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSCalendar.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSCalendar.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSCalendar = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSCalendar);
    __TIB_org_xmlvm_iphone_NSCalendar.clazz = __CLASS_org_xmlvm_iphone_NSCalendar;
    __CLASS_org_xmlvm_iphone_NSCalendar_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSCalendar, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSCalendar]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSCalendar(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSCalendar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSCalendar()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendar.classInitialized) __INIT_org_xmlvm_iphone_NSCalendar();
    org_xmlvm_iphone_NSCalendar* me = (org_xmlvm_iphone_NSCalendar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSCalendar));
    me->tib = &__TIB_org_xmlvm_iphone_NSCalendar;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSCalendar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSCalendar()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_currentCalendar__()
{
    if (!__TIB_org_xmlvm_iphone_NSCalendar.classInitialized) __INIT_org_xmlvm_iphone_NSCalendar();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_currentCalendar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

