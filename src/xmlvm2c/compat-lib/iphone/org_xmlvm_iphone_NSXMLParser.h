#ifndef __ORG_XMLVM_IPHONE_NSXMLPARSER__
#define __ORG_XMLVM_IPHONE_NSXMLPARSER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParserDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParserDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSXMLParserDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
// Class declarations for org.xmlvm.iphone.NSXMLParser
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSXMLParser, 20)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParser
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParser \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParser \
    } org_xmlvm_iphone_NSXMLParser

struct org_xmlvm_iphone_NSXMLParser {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSXMLParser* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParser;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParser
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParser
typedef struct org_xmlvm_iphone_NSXMLParser org_xmlvm_iphone_NSXMLParser;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSXMLParser 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParser_setDelegate___org_xmlvm_iphone_NSXMLParserDelegate 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParser_setShouldProcessNamespaces___boolean 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParser_shouldProcessNamespaces__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParser_setShouldReportNamespacePrefixes___boolean 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParser_shouldReportNamespacePrefixes__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParser_parse__ 19

void __INIT_org_xmlvm_iphone_NSXMLParser();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParser();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParser();
void org_xmlvm_iphone_NSXMLParser___INIT____org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 14
void org_xmlvm_iphone_NSXMLParser_setDelegate___org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
void org_xmlvm_iphone_NSXMLParser_setShouldProcessNamespaces___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 16
JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_shouldProcessNamespaces__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_NSXMLParser_setShouldReportNamespacePrefixes___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 18
JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_shouldReportNamespacePrefixes__(JAVA_OBJECT me);
// Vtable index: 19
JAVA_BOOLEAN org_xmlvm_iphone_NSXMLParser_parse__(JAVA_OBJECT me);

#endif
