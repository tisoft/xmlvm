#import "xmlvm.h"
#import <Foundation/Foundation.h>
#import "org_xmlvm_iphone_NSData.h"
#import "java_lang_String.h"


@class org_xmlvm_iphone_NSXMLParserDelegate;


// NSXMLParser
//----------------------------------------------------------------------------
typedef NSXMLParser org_xmlvm_iphone_NSXMLParser;
@interface NSXMLParser (cat_NSXMLParser)

- (void) __init_org_xmlvm_iphone_NSXMLParser___org_xmlvm_iphone_NSData: (org_xmlvm_iphone_NSData*) data;
- (void) setDelegate___org_xmlvm_iphone_NSXMLParserDelegate: (org_xmlvm_iphone_NSXMLParserDelegate*) delegate;
- (void) setShouldProcessNamespaces___boolean: (int) flag;
- (void) setShouldReportNamespacePrefixes___boolean: (int) flag;
@end
