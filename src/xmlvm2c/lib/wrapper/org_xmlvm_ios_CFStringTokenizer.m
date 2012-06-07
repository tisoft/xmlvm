
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFStringTokenizer (CFStringTokenizerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFStringTokenizer (CFStringTokenizerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFStringTokenizer.classInitialized)
        __INIT_org_xmlvm_ios_CFStringTokenizer();
}
@end

void org_xmlvm_ios_CFStringTokenizer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFStringTokenizer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFStringTokenizer();
        org_xmlvm_ios_CFStringTokenizer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFStringTokenizer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFStringTokenizer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer___INIT____org_xmlvm_ios_CFAllocator_java_lang_String_org_xmlvm_ios_CFRange_long_org_xmlvm_ios_CFLocale]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    CFStringTokenizer* var0 = [[CFStringTokenizer alloc] create:var1];
    org_xmlvm_ios_CFStringTokenizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer___INIT___]
    CFStringTokenizer* var0 = [[CFStringTokenizer alloc ] init];
    org_xmlvm_ios_CFStringTokenizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer_copyBestStringLanguage___java_lang_String_org_xmlvm_ios_CFRange]
NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = CFStringTokenizerCopyBestStringLanguage(ObjCVar1,toCFRange(n2));
    
    [ObjCVar1 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer_setString___java_lang_String_org_xmlvm_ios_CFRange]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer_goToTokenAtIndex___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer_advanceToNextToken__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer_getCurrentTokenRange__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer_copyCurrentTokenAttribute___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringTokenizer_getCurrentSubTokens___org_xmlvm_ios_Reference_long_org_xmlvm_ios_CFArray]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
