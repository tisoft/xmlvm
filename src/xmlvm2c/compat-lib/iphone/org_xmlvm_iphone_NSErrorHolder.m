#include "org_xmlvm_iphone_NSError.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSErrorHolder.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSErrorHolder __TIB_org_xmlvm_iphone_NSErrorHolder = {
    0, // classInitialized
    "org.xmlvm.iphone.NSErrorHolder", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSErrorHolder;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSErrorHolder_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"error",
    &__CLASS_org_xmlvm_iphone_NSError,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_NSErrorHolder, fields.org_xmlvm_iphone_NSErrorHolder.error_),
    0,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_NSErrorHolder()
{
    __TIB_org_xmlvm_iphone_NSErrorHolder.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSErrorHolder.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSErrorHolder;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSErrorHolder.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSErrorHolder.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSErrorHolder_description__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSErrorHolder.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSErrorHolder.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSErrorHolder.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSErrorHolder.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSErrorHolder = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSErrorHolder);
    __TIB_org_xmlvm_iphone_NSErrorHolder.clazz = __CLASS_org_xmlvm_iphone_NSErrorHolder;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSErrorHolder]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSErrorHolder(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSErrorHolder]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSErrorHolder()
{
    if (!__TIB_org_xmlvm_iphone_NSErrorHolder.classInitialized) __INIT_org_xmlvm_iphone_NSErrorHolder();
    org_xmlvm_iphone_NSErrorHolder* me = (org_xmlvm_iphone_NSErrorHolder*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSErrorHolder));
    me->tib = &__TIB_org_xmlvm_iphone_NSErrorHolder;
    me->fields.org_xmlvm_iphone_NSErrorHolder.error_ = (org_xmlvm_iphone_NSError*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSErrorHolder]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSErrorHolder()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSErrorHolder();
    org_xmlvm_iphone_NSErrorHolder___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSErrorHolder___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSErrorHolder___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSErrorHolder_description__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSErrorHolder_description__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

