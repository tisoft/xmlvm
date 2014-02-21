#import "xmlvm.h"
@class java_util_Map;
@class org_xmlvm_iphone_NSDate;
@class java_util_List;
@class java_lang_Object;
@class java_lang_String;
@class org_xmlvm_iphone_NSURL;

#define org_xmlvm_iphone_NSHTTPCookie NSHTTPCookie
@interface NSHTTPCookie (cat_org_xmlvm_iphone_NSHTTPCookie)

+ (java_lang_Object*) cookieWithProperties___java_util_Map: (java_util_Map*) properties;
+ (java_util_Map*) requestHeaderFieldsWithCookies___java_util_List: (java_util_List*) cookies;
+ (java_util_List*) cookiesWithResponseHeaderFields___java_util_Map_org_xmlvm_iphone_NSURL: (java_util_Map*) headerFields: (org_xmlvm_iphone_NSURL*) URL;
- (void) __init_org_xmlvm_iphone_NSHTTPCookie___java_util_Map: (java_util_Map*) properties;
- (void) __init_org_xmlvm_iphone_NSHTTPCookie__;
- (java_util_Map*) properties__;
- (int) versionCookie__;
- (java_lang_String*) name__;
- (java_lang_String*) value__;
- (org_xmlvm_iphone_NSDate*) expiresDate__;
- (BOOL) isSessionOnly__;
- (java_lang_String*) domain__;
- (java_lang_String*) path__;
- (BOOL) isSecure__;
- (BOOL) isHTTPOnly__;
- (java_lang_String*) comment__;
- (org_xmlvm_iphone_NSURL*) commentURL__;
- (java_util_List*) portList__;

@end
