
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSRegularExpression (NSRegularExpressionWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSRegularExpression (NSRegularExpressionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSRegularExpression.classInitialized)
        __INIT_org_xmlvm_ios_NSRegularExpression();
}
@end

void org_xmlvm_ios_NSRegularExpression_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSRegularExpression class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSRegularExpression();
        org_xmlvm_ios_NSRegularExpression_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSRegularExpression]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSRegularExpression]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression___INIT____java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSRegularExpression* var0 = [[NSRegularExpression alloc] initWithPattern:ObjCVar1 options:n2 error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSRegularExpression_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression___INIT___]
    NSRegularExpression* var0 = [[NSRegularExpression alloc ] init];
    org_xmlvm_ios_NSRegularExpression_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression___INIT___]

    NSRegularExpression* var0 = [[NSRegularExpression alloc]init];

    org_xmlvm_ios_NSRegularExpression_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_regularExpressionWithPattern___java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSRegularExpression* var0 =  [NSRegularExpression  regularExpressionWithPattern:ObjCVar1 options:n2 error:&var3];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_getPattern__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz pattern];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_getOptions__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz options];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_getNumberOfCaptureGroups__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfCaptureGroups];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_escapedPatternForString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 =  [NSRegularExpression  escapedPatternForString:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_enumerateMatchesInString___java_lang_String_int_org_xmlvm_ios_NSRange_java_lang_Object]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  enumerateMatchesInString:ObjCVar1 options:n2 range:toNSRange(n3) usingBlock:((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_matchesInString___java_lang_String_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  matchesInString:ObjCVar1 options:n2 range:toNSRange(n3)];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_numberOfMatchesInString___java_lang_String_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  numberOfMatchesInString:ObjCVar1 options:n2 range:toNSRange(n3)];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_firstMatchInString___java_lang_String_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSTextCheckingResult* var0 = [thiz  firstMatchInString:ObjCVar1 options:n2 range:toNSRange(n3)];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_rangeOfFirstMatchInString___java_lang_String_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSRange var0 = [thiz  rangeOfFirstMatchInString:ObjCVar1 options:n2 range:toNSRange(n3)];
    [ObjCVar1 release];


    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_stringByReplacingMatchesInString___java_lang_String_int_org_xmlvm_ios_NSRange_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar4 = toNSString(n4);
    
    NSString* var0 = [thiz  stringByReplacingMatchesInString:ObjCVar1 options:n2 range:toNSRange(n3) withTemplate:ObjCVar4];
    [ObjCVar1 release];

    [ObjCVar4 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_replaceMatchesInString___org_xmlvm_ios_NSMutableString_int_org_xmlvm_ios_NSRange_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar4 = toNSString(n4);
    
    int var0 = [thiz  replaceMatchesInString:(NSMutableString*) (((org_xmlvm_ios_NSMutableString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 range:toNSRange(n3) withTemplate:ObjCVar4];
    [ObjCVar4 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_replacementStringForResult___org_xmlvm_ios_NSTextCheckingResult_java_lang_String_int_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar4 = toNSString(n4);
    
    NSString* var0 = [thiz  replacementStringForResult:(NSTextCheckingResult*) (((org_xmlvm_ios_NSTextCheckingResult*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) inString:ObjCVar2 offset:n3 template:ObjCVar4];
    [ObjCVar2 release];

    [ObjCVar4 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRegularExpression_escapedTemplateForString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 =  [NSRegularExpression  escapedTemplateForString:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER
