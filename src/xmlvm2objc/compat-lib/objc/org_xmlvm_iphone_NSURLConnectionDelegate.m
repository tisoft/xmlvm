#import "org_xmlvm_iphone_NSURLConnectionDelegate.h"


// NSURLConnectionDelegate
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSURLConnectionDelegate

- (void) __init_org_xmlvm_iphone_NSURLConnectionDelegate
{
}

- (void) connectionDidFinishLoading :(NSURLConnection*) connection
{
	[self connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection: connection];
}

- (void) connection: (NSURLConnection*) connection didFailWithError :(NSError*) error
{
	[self connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError: connection :error];
}

- (void) connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection :(org_xmlvm_iphone_NSURLConnection*) connection
{
	// Do nothing
}

- (void) connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_NSURLConnection*) connection :(org_xmlvm_iphone_NSError*) error
{
	// Do nothing
}

@end
