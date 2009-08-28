
#import "org_xmlvm_iphone_NSXMLParser.h"

// NSXMLParser
//----------------------------------------------------------------------------
@implementation NSXMLParser (cat_NSXMLParser)

- (void) __init_org_xmlvm_iphone_NSXMLParser___org_xmlvm_iphone_NSData: (org_xmlvm_iphone_NSData*) data
{
	[self initWithData: data];
}

- (void) setDelegate___org_xmlvm_iphone_NSXMLParserDelegate: (org_xmlvm_iphone_NSXMLParserDelegate*) delegate
{
	[self setDelegate: delegate];
}

- (void) setShouldProcessNamespaces___boolean: (int) flag
{
	[self setShouldProcessNamespaces: flag];
}

- (void) setShouldReportNamespacePrefixes___boolean: (int) flag
{
	[self setShouldReportNamespacePrefixes: flag];
}

@end

