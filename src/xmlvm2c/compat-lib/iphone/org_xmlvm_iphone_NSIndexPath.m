#include "xmlvm.h"

#include "org_xmlvm_iphone_NSIndexPath.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSIndexPath __TIB_org_xmlvm_iphone_NSIndexPath = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSIndexPath, // classInitializer
    "org.xmlvm.iphone.NSIndexPath", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSIndexPath_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSIndexPath();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSIndexPath___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_NSIndexPath()
{
    __TIB_org_xmlvm_iphone_NSIndexPath.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSIndexPath.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSIndexPath.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSIndexPath.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_getSection__;
    __TIB_org_xmlvm_iphone_NSIndexPath.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_getRow__;
    __TIB_org_xmlvm_iphone_NSIndexPath.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_setSection___int;
    __TIB_org_xmlvm_iphone_NSIndexPath.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_setRow___int;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSIndexPath.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSIndexPath.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSIndexPath.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSIndexPath.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSIndexPath.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSIndexPath.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSIndexPath.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSIndexPath = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSIndexPath);
    __TIB_org_xmlvm_iphone_NSIndexPath.clazz = __CLASS_org_xmlvm_iphone_NSIndexPath;
    __CLASS_org_xmlvm_iphone_NSIndexPath_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSIndexPath, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSIndexPath]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSIndexPath(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSIndexPath]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSIndexPath()
{
    if (!__TIB_org_xmlvm_iphone_NSIndexPath.classInitialized) __INIT_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath* me = (org_xmlvm_iphone_NSIndexPath*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSIndexPath));
    me->tib = &__TIB_org_xmlvm_iphone_NSIndexPath;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSIndexPath]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSIndexPath___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSIndexPath.classInitialized) __INIT_org_xmlvm_iphone_NSIndexPath();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSIndexPath_getSection__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_getSection__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSIndexPath_getRow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_getRow__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSIndexPath_setSection___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_setSection___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSIndexPath_setRow___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_setRow___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

