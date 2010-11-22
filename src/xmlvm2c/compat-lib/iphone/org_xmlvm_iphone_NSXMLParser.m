#include "org_xmlvm_iphone_NSXMLParserDelegate.h"
#include "org_xmlvm_iphone_NSData.h"

#include "org_xmlvm_iphone_NSXMLParser.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSXMLParser __CLASS_org_xmlvm_iphone_NSXMLParser = {
    0, // classInitialized
    "org.xmlvm.iphone.NSXMLParser", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSXMLParser()
{
    __CLASS_org_xmlvm_iphone_NSXMLParser.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSXMLParser.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParser;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSXMLParser.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSXMLParser.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParser_setDelegate___org_xmlvm_iphone_NSXMLParserDelegate;
    __CLASS_org_xmlvm_iphone_NSXMLParser.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParser_setShouldProcessNamespaces___boolean;
    __CLASS_org_xmlvm_iphone_NSXMLParser.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParser_shouldProcessNamespaces__;
    __CLASS_org_xmlvm_iphone_NSXMLParser.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParser_setShouldReportNamespacePrefixes___boolean;
    __CLASS_org_xmlvm_iphone_NSXMLParser.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParser_shouldReportNamespacePrefixes__;
    __CLASS_org_xmlvm_iphone_NSXMLParser.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParser_parse__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSXMLParser.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSXMLParser.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSXMLParser]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_NSXMLParser(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSXMLParser]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParser()
{
    if (!__CLASS_org_xmlvm_iphone_NSXMLParser.classInitialized) __INIT_org_xmlvm_iphone_NSXMLParser();
    org_xmlvm_iphone_NSXMLParser* me = (org_xmlvm_iphone_NSXMLParser*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSXMLParser));
    me->__class = &__CLASS_org_xmlvm_iphone_NSXMLParser;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSXMLParser]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSXMLParser);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParser()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSXMLParser___INIT____org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser___INIT____org_xmlvm_iphone_NSData]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParser_setDelegate___org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_setDelegate___org_xmlvm_iphone_NSXMLParserDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParser_setShouldProcessNamespaces___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_setShouldProcessNamespaces___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_shouldProcessNamespaces__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_shouldProcessNamespaces__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParser_setShouldReportNamespacePrefixes___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_setShouldReportNamespacePrefixes___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_shouldReportNamespacePrefixes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_shouldReportNamespacePrefixes__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_parse__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParser_parse__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

