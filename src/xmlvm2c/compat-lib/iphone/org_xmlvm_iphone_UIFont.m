#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIFont.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIFont __CLASS_org_xmlvm_iphone_UIFont = {
    0, // classInitialized
    "org.xmlvm.iphone.UIFont", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIFont()
{
    __CLASS_org_xmlvm_iphone_UIFont.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIFont.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIFont;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIFont.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIFont.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_fontWithSize___float;
    __CLASS_org_xmlvm_iphone_UIFont.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_familyName__;
    __CLASS_org_xmlvm_iphone_UIFont.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_fontName__;
    __CLASS_org_xmlvm_iphone_UIFont.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIFont_pointSize__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIFont.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIFont.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIFont]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIFont(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIFont]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIFont()
{
    if (!__CLASS_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    org_xmlvm_iphone_UIFont* me = (org_xmlvm_iphone_UIFont*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIFont));
    me->__class = &__CLASS_org_xmlvm_iphone_UIFont;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIFont]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIFont);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIFont()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_systemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_systemFontOfSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_boldSystemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_boldSystemFontOfSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIFont_italicSystemFontOfSize___float(JAVA_FLOAT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
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
    if (!__CLASS_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_fontWithNameSize___java_lang_String_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIFont_buttonFontSize__()
{
    if (!__CLASS_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIFont_buttonFontSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIFont_labelFontSize__()
{
    if (!__CLASS_org_xmlvm_iphone_UIFont.classInitialized) __INIT_org_xmlvm_iphone_UIFont();
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

