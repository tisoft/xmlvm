
#include "org_xmlvm_iphone_CGFont.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGFont __TIB_org_xmlvm_iphone_CGFont = {
    0, // classInitialized
    "org.xmlvm.iphone.CGFont", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGFont_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_CGFont()
{
    __TIB_org_xmlvm_iphone_CGFont.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CGFont.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGFont;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGFont.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CGFont.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CGFont_getAscent__;
    __TIB_org_xmlvm_iphone_CGFont.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CGFont_getDescent__;
    __TIB_org_xmlvm_iphone_CGFont.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CGFont_getUnitsPerEm__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGFont.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGFont.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_CGFont.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGFont.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGFont = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_CGFont);
    __TIB_org_xmlvm_iphone_CGFont.clazz = __CLASS_org_xmlvm_iphone_CGFont;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGFont]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGFont(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGFont]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGFont()
{
    if (!__TIB_org_xmlvm_iphone_CGFont.classInitialized) __INIT_org_xmlvm_iphone_CGFont();
    org_xmlvm_iphone_CGFont* me = (org_xmlvm_iphone_CGFont*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGFont));
    me->tib = &__TIB_org_xmlvm_iphone_CGFont;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGFont]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGFont()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGFont_createFromDataProider___org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_CGFont.classInitialized) __INIT_org_xmlvm_iphone_CGFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGFont_createFromDataProider___org_xmlvm_iphone_CGDataProvider]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CGFont_getAscent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGFont_getAscent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CGFont_getDescent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGFont_getDescent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CGFont_getUnitsPerEm__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGFont_getUnitsPerEm__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

