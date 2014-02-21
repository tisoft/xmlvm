#import "org_xmlvm_iphone_NSHTTPCookieStorage.h"
#import "java_util_List.h"
#import "org_xmlvm_iphone_NSHTTPCookie.h"
#import "org_xmlvm_iphone_NSURL.h"

//IMPLEMENT_START OUTSIDE_OBJECT

    

//IMPLEMENT_END

@implementation NSHTTPCookieStorage (cat_org_xmlvm_iphone_NSHTTPCookieStorage)

//IMPLEMENT_START INSIDE_OBJECT

    
- (id) init
{
    return self;
}

//IMPLEMENT_END

+ (org_xmlvm_iphone_NSHTTPCookieStorage*) sharedHTTPCookieStorage__
{
//IMPLEMENT_START + (NSHTTPCookieStorage *)sharedHTTPCookieStorage;

    return_XMLVM_SELECTOR(org_xmlvm_iphone_NSHTTPCookieStorage sharedHTTPCookieStorage)

//IMPLEMENT_END
}

- (void) __init_org_xmlvm_iphone_NSHTTPCookieStorage__
{
//IMPLEMENT_START DEFAULT_CONSTRUCTOR

    [super init];

//IMPLEMENT_END
}

- (java_util_List*) cookies__
{
//IMPLEMENT_START - (NSArray *)cookies;

    return_XMLVM_SELECTOR(self cookies)

//IMPLEMENT_END
}

- (void) setCookie___org_xmlvm_iphone_NSHTTPCookie: (org_xmlvm_iphone_NSHTTPCookie*) cookie
{
//IMPLEMENT_START - (void)setCookie:(NSHTTPCookie *)cookie;

    [self setCookie:XMLVM_NULL2NIL(cookie)];

//IMPLEMENT_END
}

- (void) deleteCookie___org_xmlvm_iphone_NSHTTPCookie: (org_xmlvm_iphone_NSHTTPCookie*) cookie
{
//IMPLEMENT_START - (void)deleteCookie:(NSHTTPCookie *)cookie;

    [self deleteCookie:XMLVM_NULL2NIL(cookie)];

//IMPLEMENT_END
}

- (java_util_List*) cookiesForURL___org_xmlvm_iphone_NSURL: (org_xmlvm_iphone_NSURL*) URL
{
//IMPLEMENT_START - (NSArray *)cookiesForURL:(NSURL *)URL;

    return_XMLVM_SELECTOR(self cookiesForURL:XMLVM_NULL2NIL(URL))

//IMPLEMENT_END
}

- (void) setCookies___java_util_List_org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSURL: (java_util_List*) cookies: (org_xmlvm_iphone_NSURL*) URL: (org_xmlvm_iphone_NSURL*) mainDocumentURL
{
//IMPLEMENT_START - (void)setCookies:(NSArray *)cookies forURL:(NSURL *)URL mainDocumentURL:(NSURL *)mainDocumentURL;

    [self setCookies:XMLVM_NULL2NIL(cookies) forURL:XMLVM_NULL2NIL(URL) mainDocumentURL:XMLVM_NULL2NIL(mainDocumentURL)];

//IMPLEMENT_END
}

- (int) cookieAcceptPolicy__
{
//IMPLEMENT_START - (NSHTTPCookieAcceptPolicy)cookieAcceptPolicy;

    return [self cookieAcceptPolicy];

//IMPLEMENT_END
}

- (void) setCookieAcceptPolicy___int: (int) cookieAcceptPolicy
{
//IMPLEMENT_START - (void)setCookieAcceptPolicy:(NSHTTPCookieAcceptPolicy)cookieAcceptPolicy;

    [self setCookieAcceptPolicy:cookieAcceptPolicy];

//IMPLEMENT_END
}

- (java_util_List*) sortedCookiesUsingDescriptors___java_util_List: (java_util_List*) sortOrder
{
//IMPLEMENT_START - (NSArray*)sortedCookiesUsingDescriptors:(NSArray*) sortOrder ;

    return_XMLVM_SELECTOR(self sortedCookiesUsingDescriptors:XMLVM_NULL2NIL(sortOrder))

//IMPLEMENT_END
}

@end
