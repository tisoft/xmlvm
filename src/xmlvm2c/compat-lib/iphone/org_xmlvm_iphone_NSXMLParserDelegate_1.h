#ifndef __ORG_XMLVM_IPHONE_NSXMLPARSERDELEGATE_1__
#define __ORG_XMLVM_IPHONE_NSXMLPARSERDELEGATE_1__

#include "xmlvm.h"
#include "org_xml_sax_helpers_DefaultHandler.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParserDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParserDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSXMLParserDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xml_sax_helpers_DefaultHandler
#define XMLVM_FORWARD_DECL_org_xml_sax_helpers_DefaultHandler
XMLVM_FORWARD_DECL(org_xml_sax_helpers_DefaultHandler)
#endif
// Class declarations for org.xmlvm.iphone.NSXMLParserDelegate$1
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSXMLParserDelegate_1, 28)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParserDelegate_1
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParserDelegate_1 \
    __INSTANCE_MEMBERS_org_xml_sax_helpers_DefaultHandler; \
    struct { \
        JAVA_OBJECT this_0_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParserDelegate_1 \
    } org_xmlvm_iphone_NSXMLParserDelegate_1

struct org_xmlvm_iphone_NSXMLParserDelegate_1 {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSXMLParserDelegate_1* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParserDelegate_1;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParserDelegate_1
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParserDelegate_1
typedef struct org_xmlvm_iphone_NSXMLParserDelegate_1 org_xmlvm_iphone_NSXMLParserDelegate_1;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSXMLParserDelegate_1 28

void __INIT_org_xmlvm_iphone_NSXMLParserDelegate_1();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParserDelegate_1();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate_1();
void org_xmlvm_iphone_NSXMLParserDelegate_1___INIT____org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
