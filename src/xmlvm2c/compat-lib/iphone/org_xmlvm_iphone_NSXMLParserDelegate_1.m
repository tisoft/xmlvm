#include "org_xmlvm_iphone_NSXMLParserDelegate.h"

#include "org_xmlvm_iphone_NSXMLParserDelegate_1.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSXMLParserDelegate_1 __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1 = {
    0, // classInitialized
    "org.xmlvm.iphone.NSXMLParserDelegate$1", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xml_sax_helpers_DefaultHandler, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSXMLParserDelegate_1()
{
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xml_sax_helpers_DefaultHandler.classInitialized) __INIT_org_xml_sax_helpers_DefaultHandler();
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate_1;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable, __CLASS_org_xml_sax_helpers_DefaultHandler.vtable, sizeof(__CLASS_org_xml_sax_helpers_DefaultHandler.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.numImplementedInterfaces = 4;
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 4);
    __INIT_org_xml_sax_DTDHandler(&__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][0]);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][0]->vtable[11] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[12];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][0]->vtable[12] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[13];
    __INIT_org_xml_sax_EntityResolver(&__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][1]);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][1]->vtable[11] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[11];
    __INIT_org_xml_sax_ContentHandler(&__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[11] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[14];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[12] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[15];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[13] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[16];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[14] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[17];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[15] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[18];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[16] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[19];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[17] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[20];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[18] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[21];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[19] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[22];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[20] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[23];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][2]->vtable[21] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[24];
    __INIT_org_xml_sax_ErrorHandler(&__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][3]);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][3]->vtable[11] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[25];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][3]->vtable[12] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[26];
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.implementedInterfaces[0][3]->vtable[13] = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.vtable[27];


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSXMLParserDelegate_1]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParserDelegate_1()
{
    if (!__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1.classInitialized) __INIT_org_xmlvm_iphone_NSXMLParserDelegate_1();
    org_xmlvm_iphone_NSXMLParserDelegate_1* me = (org_xmlvm_iphone_NSXMLParserDelegate_1*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSXMLParserDelegate_1));
    me->__class = &__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1;
    me->org_xmlvm_iphone_NSXMLParserDelegate_1.this_0_ = (org_xmlvm_iphone_NSXMLParserDelegate*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSXMLParserDelegate_1]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate_1()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_NSXMLParserDelegate_1(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSXMLParserDelegate_1]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_1___INIT____org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_1___INIT____org_xmlvm_iphone_NSXMLParserDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

