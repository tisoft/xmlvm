#ifndef __ORG_XMLVM_IPHONE_NSXMLPARSERDELEGATE__
#define __ORG_XMLVM_IPHONE_NSXMLPARSERDELEGATE__

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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParser
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParser
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSXMLParser)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Map
#define XMLVM_FORWARD_DECL_java_util_Map
XMLVM_FORWARD_DECL(java_util_Map)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSXMLParserDelegate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSXMLParserDelegate, 21)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSXMLParserDelegate

@interface NSXMLParserDelegateWrapper : NSObject <NSXMLParserDelegate> {
    
    org_xmlvm_iphone_NSXMLParserDelegate* delegate;
    org_xmlvm_iphone_NSXMLParser*         parser;
    
}

- (id) initWithDelegate:(JAVA_OBJECT) delegate_;
- (void) setParser:(JAVA_OBJECT) parser_;
- (void) parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI;
- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI
  qualifiedName:(NSString *)qualifiedName
     attributes:(NSDictionary *)attributeDict;
- (void) parser:(NSXMLParser *)parser
  didEndElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI
  qualifiedName:(NSString *)qualifiedName;
- (void) parser:(NSXMLParser *)parser
foundCharacters:(NSString *)string;
- (void)parser:(NSXMLParser *)parser
	foundCDATA:(NSData *)CDATABlock;

@end

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSXMLParserDelegate \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSXMLParserDelegate \
    } org_xmlvm_iphone_NSXMLParserDelegate

struct org_xmlvm_iphone_NSXMLParserDelegate {
    __TIB_DEFINITION_org_xmlvm_iphone_NSXMLParserDelegate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSXMLParserDelegate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParserDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSXMLParserDelegate
typedef struct org_xmlvm_iphone_NSXMLParserDelegate org_xmlvm_iphone_NSXMLParserDelegate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSXMLParserDelegate 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser 20

void __INIT_org_xmlvm_iphone_NSXMLParserDelegate();
void __INIT_IMPL_org_xmlvm_iphone_NSXMLParserDelegate();
void __DELETE_org_xmlvm_iphone_NSXMLParserDelegate(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParserDelegate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate();
void org_xmlvm_iphone_NSXMLParserDelegate___INIT___(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
// Vtable index: 15
void org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 16
void org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_OBJECT n5);
// Vtable index: 17
void org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4);
// Vtable index: 18
void org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 19
void org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 20
void org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSXMLParserDelegate_access$000___org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT n1);

#endif
