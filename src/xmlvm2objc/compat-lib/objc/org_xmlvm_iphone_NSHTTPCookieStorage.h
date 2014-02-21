#import "xmlvm.h"
@class java_util_List;
@class org_xmlvm_iphone_NSHTTPCookie;
@class org_xmlvm_iphone_NSURL;

#define org_xmlvm_iphone_NSHTTPCookieStorage NSHTTPCookieStorage
@interface NSHTTPCookieStorage (cat_org_xmlvm_iphone_NSHTTPCookieStorage)

+ (org_xmlvm_iphone_NSHTTPCookieStorage*) sharedHTTPCookieStorage__;
- (void) __init_org_xmlvm_iphone_NSHTTPCookieStorage__;
- (java_util_List*) cookies__;
- (void) setCookie___org_xmlvm_iphone_NSHTTPCookie: (org_xmlvm_iphone_NSHTTPCookie*) cookie;
- (void) deleteCookie___org_xmlvm_iphone_NSHTTPCookie: (org_xmlvm_iphone_NSHTTPCookie*) cookie;
- (java_util_List*) cookiesForURL___org_xmlvm_iphone_NSURL: (org_xmlvm_iphone_NSURL*) URL;
- (void) setCookies___java_util_List_org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSURL: (java_util_List*) cookies: (org_xmlvm_iphone_NSURL*) URL: (org_xmlvm_iphone_NSURL*) mainDocumentURL;
- (int) cookieAcceptPolicy__;
- (void) setCookieAcceptPolicy___int: (int) cookieAcceptPolicy;
- (java_util_List*) sortedCookiesUsingDescriptors___java_util_List: (java_util_List*) sortOrder;

@end
