#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_NSErrorHolder.h"


@class org_xmlvm_iphone_NSURLConnection;


// NSURLConnectionDelegate
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_NSURLConnectionDelegate : java_lang_Object

- (void) __init_org_xmlvm_iphone_NSURLConnectionDelegate;

- (void) connectionDidFinishLoading :(NSURLConnection*) connection;
- (void) connection: (NSURLConnection*) connection didFailWithError :(NSError*) error;

- (void) connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection :(org_xmlvm_iphone_NSURLConnection*) connection;
- (void) connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_NSURLConnection*) connection :(org_xmlvm_iphone_NSError*) error;
@end
