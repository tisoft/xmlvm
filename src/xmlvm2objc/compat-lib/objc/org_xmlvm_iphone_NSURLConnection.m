
#import "org_xmlvm_iphone_NSURLConnection.h"


// NSURLConnection
//----------------------------------------------------------------------------
@implementation NSURLConnection (cat_NSURLConnection)

+ (org_xmlvm_iphone_NSURLConnection*) connectionWithRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSURLConnectionDelegate
               :(org_xmlvm_iphone_NSMutableURLRequest*) req
               :(org_xmlvm_iphone_NSURLConnectionDelegate*) delegate
{
	// TODO better reference counting for the delegate
	[delegate retain];
	return [NSURLConnection connectionWithRequest:req delegate:delegate];
}

+ (NSData*) sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder
               :(org_xmlvm_iphone_NSMutableURLRequest*) req
               :(org_xmlvm_iphone_NSHTTPURLResponseHolder*) respHolder
               :(org_xmlvm_iphone_NSErrorHolder*) errHolder
{
    NSHTTPURLResponse* resp;
    NSError* err;
    NSData* data;
    data = [NSURLConnection sendSynchronousRequest:req
                            returningResponse:&resp
                            error:&err];
    // TODO need to wrap resp and err in Holder classes
    return data;
}
@end
