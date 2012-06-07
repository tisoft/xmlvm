
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSTextCheckingResult (NSTextCheckingResultWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSTextCheckingResult (NSTextCheckingResultWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSTextCheckingResult.classInitialized)
        __INIT_org_xmlvm_ios_NSTextCheckingResult();
}
@end

void org_xmlvm_ios_NSTextCheckingResult_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSTextCheckingResult class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSTextCheckingResult();
        org_xmlvm_ios_NSTextCheckingResult_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSTextCheckingResult]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSTextCheckingResult]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult___INIT___]
    NSTextCheckingResult* var0 = [[NSTextCheckingResult alloc ] init];
    org_xmlvm_ios_NSTextCheckingResult_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult___INIT___]

    NSTextCheckingResult* var0 = [[NSTextCheckingResult alloc]init];

    org_xmlvm_ios_NSTextCheckingResult_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getResultType__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz resultType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getRange__]

    XMLVM_VAR_THIZ;
    NSRange var0 = [thiz range];
    
    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getOrthography__]

    XMLVM_VAR_THIZ;
    NSOrthography* var0 = [thiz orthography];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getGrammarDetails__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz grammarDetails];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz date];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getTimeZone__]

    XMLVM_VAR_THIZ;
    NSTimeZone* var0 = [thiz timeZone];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz duration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getURL__]

    XMLVM_VAR_THIZ;
    NSURL* var0 = [thiz URL];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getReplacementString__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz replacementString];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getComponents__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getRegularExpression__]

    XMLVM_VAR_THIZ;
    NSRegularExpression* var0 = [thiz regularExpression];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getPhoneNumber__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz phoneNumber];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getAddressComponents__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_getNumberOfRanges__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfRanges];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_rangeAtIndex___int]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  rangeAtIndex:n1];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_orthographyCheckingResultWithRange___org_xmlvm_ios_NSRange_org_xmlvm_ios_NSOrthography]

    NSTextCheckingResult* var0 =  [NSTextCheckingResult  orthographyCheckingResultWithRange:toNSRange(n1) orthography:(NSOrthography*) (((org_xmlvm_ios_NSOrthography*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_spellCheckingResultWithRange___org_xmlvm_ios_NSRange]

    NSTextCheckingResult* var0 =  [NSTextCheckingResult  spellCheckingResultWithRange:toNSRange(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_grammarCheckingResultWithRange___org_xmlvm_ios_NSRange_java_util_List]
NSArray * ObjCVar2 = toNSArray(n2);
    
    NSTextCheckingResult* var0 =  [NSTextCheckingResult  grammarCheckingResultWithRange:toNSRange(n1) details:ObjCVar2];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_dateCheckingResultWithRange___org_xmlvm_ios_NSRange_org_xmlvm_ios_NSDate]

    NSTextCheckingResult* var0 =  [NSTextCheckingResult  dateCheckingResultWithRange:toNSRange(n1) date:(NSDate*) (((org_xmlvm_ios_NSDate*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_dateCheckingResultWithRange___org_xmlvm_ios_NSRange_org_xmlvm_ios_NSDate_org_xmlvm_ios_NSTimeZone_double]

    NSTextCheckingResult* var0 =  [NSTextCheckingResult  dateCheckingResultWithRange:toNSRange(n1) date:(NSDate*) (((org_xmlvm_ios_NSDate*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) timeZone:(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) duration:n4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_addressCheckingResultWithRange___org_xmlvm_ios_NSRange_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_linkCheckingResultWithRange___org_xmlvm_ios_NSRange_org_xmlvm_ios_NSURL]

    NSTextCheckingResult* var0 =  [NSTextCheckingResult  linkCheckingResultWithRange:toNSRange(n1) URL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_quoteCheckingResultWithRange___org_xmlvm_ios_NSRange_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    NSTextCheckingResult* var0 =  [NSTextCheckingResult  quoteCheckingResultWithRange:toNSRange(n1) replacementString:ObjCVar2];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_dashCheckingResultWithRange___org_xmlvm_ios_NSRange_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    NSTextCheckingResult* var0 =  [NSTextCheckingResult  dashCheckingResultWithRange:toNSRange(n1) replacementString:ObjCVar2];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_replacementCheckingResultWithRange___org_xmlvm_ios_NSRange_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    NSTextCheckingResult* var0 =  [NSTextCheckingResult  replacementCheckingResultWithRange:toNSRange(n1) replacementString:ObjCVar2];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_correctionCheckingResultWithRange___org_xmlvm_ios_NSRange_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    NSTextCheckingResult* var0 =  [NSTextCheckingResult  correctionCheckingResultWithRange:toNSRange(n1) replacementString:ObjCVar2];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_regularExpressionCheckingResultWithRanges___org_xmlvm_ios_Reference_int_org_xmlvm_ios_NSRegularExpression]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    NSRange var1= toNSRange(jObject1);
    
    NSTextCheckingResult* var0 =  [NSTextCheckingResult  regularExpressionCheckingResultWithRanges:&var1 count:n2 regularExpression:(NSRegularExpression*) (((org_xmlvm_ios_NSRegularExpression*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_phoneNumberCheckingResultWithRange___org_xmlvm_ios_NSRange_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    NSTextCheckingResult* var0 =  [NSTextCheckingResult  phoneNumberCheckingResultWithRange:toNSRange(n1) phoneNumber:ObjCVar2];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTextCheckingResult_transitInformationCheckingResultWithRange___org_xmlvm_ios_NSRange_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
