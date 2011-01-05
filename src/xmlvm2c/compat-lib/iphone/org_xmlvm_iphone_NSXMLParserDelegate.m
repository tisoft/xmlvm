#include "org_xmlvm_iphone_NSXMLParser.h"

#include "org_xmlvm_iphone_NSXMLParserDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSXMLParserDelegate __TIB_org_xmlvm_iphone_NSXMLParserDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.NSXMLParserDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_NSXMLParserDelegate()
{
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSXMLParserDelegate);
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.clazz = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSXMLParserDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSXMLParserDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSXMLParserDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParserDelegate()
{
    if (!__TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized) __INIT_org_xmlvm_iphone_NSXMLParserDelegate();
    org_xmlvm_iphone_NSXMLParserDelegate* me = (org_xmlvm_iphone_NSXMLParserDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSXMLParserDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_NSXMLParserDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSXMLParserDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSXMLParserDelegate();
    org_xmlvm_iphone_NSXMLParserDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSXMLParserDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_OBJECT n5)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSXMLParserDelegate_access$000___org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized) __INIT_org_xmlvm_iphone_NSXMLParserDelegate();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_access$000___org_xmlvm_iphone_NSXMLParserDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

