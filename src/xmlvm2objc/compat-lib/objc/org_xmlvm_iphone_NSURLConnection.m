
#import "org_xmlvm_iphone_NSURLConnection.h"


// NSURLConnection
//----------------------------------------------------------------------------
@implementation NSURLConnection (cat_NSURLConnection)
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
