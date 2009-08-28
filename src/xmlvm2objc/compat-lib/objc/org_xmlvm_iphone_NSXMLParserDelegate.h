#import "xmlvm.h"
#import <Foundation/Foundation.h>
#import "org_xmlvm_iphone_NSXMLParser.h"
#import "org_xmlvm_iphone_NSData.h"
#import "java_lang_String.h"
#import "java_util_Map.h"



// NSXMLParserDelegate
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_NSXMLParserDelegate : NSObject

- (void) __init_org_xmlvm_iphone_NSXMLParserDelegate;

- (void) parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI;
- (void) didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String
     :(org_xmlvm_iphone_NSXMLParser*) parser
     :(java_lang_String*) prefix
     :(java_lang_String*) namespaceURI;

- (void) parser:(NSXMLParser *)parser
         didStartElement:(NSString *)elementName
         namespaceURI:(NSString *)namespaceURI
         qualifiedName:(NSString *)qualifiedName
         attributes:(NSDictionary *)attributeDict;
- (void) didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map
     :(org_xmlvm_iphone_NSXMLParser*) parser
     :(java_lang_String*) elementName
     :(java_lang_String*) namespaceURI
     :(java_lang_String*) qualifiedName
     :(java_util_Map*) attributeDict;
     
- (void) parser:(NSXMLParser *)parser
         didEndElement:(NSString *)elementName
         namespaceURI:(NSString *)namespaceURI
         qualifiedName:(NSString *)qName;
- (void) didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String
     :(org_xmlvm_iphone_NSXMLParser*) parser
     :(java_lang_String*) elementName
     :(java_lang_String*) namespaceURI
     :(java_lang_String*) qualifiedName;
         
@end
