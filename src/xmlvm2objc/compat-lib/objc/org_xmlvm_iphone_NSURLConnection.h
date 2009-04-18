#import "xmlvm.h"
#import "org_xmlvm_iphone_NSURLConnectionDelegate.h"
#import "org_xmlvm_iphone_NSMutableURLRequest.h"
#import "org_xmlvm_iphone_NSHTTPURLResponseHolder.h"
#import "org_xmlvm_iphone_NSErrorHolder.h"


// NSURLConnection
//----------------------------------------------------------------------------
typedef NSURLConnection org_xmlvm_iphone_NSURLConnection;
@interface NSURLConnection (cat_NSURLConnection)

+ (org_xmlvm_iphone_NSURLConnection*) connectionWithRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSURLConnectionDelegate
               :(org_xmlvm_iphone_NSMutableURLRequest*) req
               :(org_xmlvm_iphone_NSURLConnectionDelegate*) delegate;

+ (NSData*) sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder
               :(org_xmlvm_iphone_NSMutableURLRequest*) req
               :(org_xmlvm_iphone_NSHTTPURLResponseHolder*) resp
               :(org_xmlvm_iphone_NSErrorHolder*) err;
@end
