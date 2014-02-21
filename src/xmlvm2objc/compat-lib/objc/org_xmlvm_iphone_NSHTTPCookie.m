#import "org_xmlvm_iphone_NSHTTPCookie.h"
#import "java_util_Map.h"
#import "org_xmlvm_iphone_NSDate.h"
#import "java_util_List.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_NSURL.h"

//IMPLEMENT_START OUTSIDE_OBJECT

    

//IMPLEMENT_END

@implementation NSHTTPCookie (cat_org_xmlvm_iphone_NSHTTPCookie)

//IMPLEMENT_START INSIDE_OBJECT

    
- (id) init
{
    return self;
}

//IMPLEMENT_END

+ (java_lang_Object*) cookieWithProperties___java_util_Map: (java_util_Map*) properties
{
//IMPLEMENT_START + (id)cookieWithProperties:(NSDictionary *)properties;

    return_XMLVM_SELECTOR(org_xmlvm_iphone_NSHTTPCookie cookieWithProperties:XMLVM_NULL2NIL(properties))

//IMPLEMENT_END
}

+ (java_util_Map*) requestHeaderFieldsWithCookies___java_util_List: (java_util_List*) cookies
{
//IMPLEMENT_START + (NSDictionary *)requestHeaderFieldsWithCookies:(NSArray *)cookies;

    return_XMLVM_SELECTOR(org_xmlvm_iphone_NSHTTPCookie requestHeaderFieldsWithCookies:XMLVM_NULL2NIL(cookies))

//IMPLEMENT_END
}

+ (java_util_List*) cookiesWithResponseHeaderFields___java_util_Map_org_xmlvm_iphone_NSURL: (java_util_Map*) headerFields: (org_xmlvm_iphone_NSURL*) URL
{
//IMPLEMENT_START + (NSArray *)cookiesWithResponseHeaderFields:(NSDictionary *)headerFields forURL:(NSURL *)URL;

    return_XMLVM_SELECTOR(org_xmlvm_iphone_NSHTTPCookie cookiesWithResponseHeaderFields:XMLVM_NULL2NIL(headerFields) forURL:XMLVM_NULL2NIL(URL))

//IMPLEMENT_END
}

- (void) __init_org_xmlvm_iphone_NSHTTPCookie___java_util_Map: (java_util_Map*) properties
{
//IMPLEMENT_START - (id)initWithProperties:(NSDictionary *)properties;

    [self initWithProperties:XMLVM_NULL2NIL(properties)];

//IMPLEMENT_END
}

- (void) __init_org_xmlvm_iphone_NSHTTPCookie__
{
//IMPLEMENT_START DEFAULT_CONSTRUCTOR

    [super init];

//IMPLEMENT_END
}

- (java_util_Map*) properties__
{
//IMPLEMENT_START - (NSDictionary *)properties;

    return_XMLVM_SELECTOR(self properties)

//IMPLEMENT_END
}

- (int) versionCookie__
{
//IMPLEMENT_START - (NSUInteger)version;

    return [self version];

//IMPLEMENT_END
}

- (java_lang_String*) name__
{
//IMPLEMENT_START - (NSString *)name;

    return_XMLVM_SELECTOR(self name)

//IMPLEMENT_END
}

- (java_lang_String*) value__
{
//IMPLEMENT_START - (NSString *)value;

    return_XMLVM_SELECTOR(self value)

//IMPLEMENT_END
}

- (org_xmlvm_iphone_NSDate*) expiresDate__
{
//IMPLEMENT_START - (NSDate *)expiresDate;

    return_XMLVM_SELECTOR(self expiresDate)

//IMPLEMENT_END
}

- (BOOL) isSessionOnly__
{
//IMPLEMENT_START - (BOOL)isSessionOnly;

    return [self isSessionOnly];

//IMPLEMENT_END
}

- (java_lang_String*) domain__
{
//IMPLEMENT_START - (NSString *)domain;

    return_XMLVM_SELECTOR(self domain)

//IMPLEMENT_END
}

- (java_lang_String*) path__
{
//IMPLEMENT_START - (NSString *)path;

    return_XMLVM_SELECTOR(self path)

//IMPLEMENT_END
}

- (BOOL) isSecure__
{
//IMPLEMENT_START - (BOOL)isSecure;

    return [self isSecure];

//IMPLEMENT_END
}

- (BOOL) isHTTPOnly__
{
//IMPLEMENT_START - (BOOL)isHTTPOnly;

    return [self isHTTPOnly];

//IMPLEMENT_END
}

- (java_lang_String*) comment__
{
//IMPLEMENT_START - (NSString *)comment;

    return_XMLVM_SELECTOR(self comment)

//IMPLEMENT_END
}

- (org_xmlvm_iphone_NSURL*) commentURL__
{
//IMPLEMENT_START - (NSURL *)commentURL;

    return_XMLVM_SELECTOR(self commentURL)

//IMPLEMENT_END
}

- (java_util_List*) portList__
{
//IMPLEMENT_START - (NSArray *)portList;

    return_XMLVM_SELECTOR(self portList)

//IMPLEMENT_END
}

@end
