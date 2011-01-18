#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIFont.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIFont __TIB_org_xmlvm_iphone_UIFont = {
    0, // classInitialized
    "org.xmlvm.iphone.UIFont", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIFont_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIFont();
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

void __INIT_org_xmlvm_iphone_UIFont()
{
    __TIB_org_xmlvm_iphone_UIFont.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIFont.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIFont;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIFont.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIFont.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_fontWithSize___float;
    __TIB_org_xmlvm_iphone_UIFont.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_familyName__;
    __TIB_org_xmlvm_iphone_UIFont.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_fontName__;
    __TIB_org_xmlvm_iphone_UIFont.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_pointSize__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIFont.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIFont.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIFont.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIFont.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIFont.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIFont.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIFont.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIFont = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIFont);
    __TIB_org_xmlvm_iphone_UIFont.clazz = __CLASS_org_xmlvm_iphone_UIFont;
    __CLASS_org_xmlvm_iphone_UIFont_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIFont, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIFont]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIFont(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIFont]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIFont()
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    org_xmlvm_iphone_UIFont* me = (org_xmlvm_iphone_UIFont*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIFont));
    me->tib = &__TIB_org_xmlvm_iphone_UIFont;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIFont]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIFont()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_systemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_systemFontOfSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_boldSystemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_boldSystemFontOfSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_italicSystemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_italicSystemFontOfSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_fontWithSize___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_fontWithSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_fontWithNameSize___java_lang_String_float(JAVA_OBJECT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_fontWithNameSize___java_lang_String_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIFont_buttonFontSize__()
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_buttonFontSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIFont_labelFontSize__()
{
    if (!__TIB_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_labelFontSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_familyName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_familyName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_fontName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_fontName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIFont_pointSize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_pointSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

