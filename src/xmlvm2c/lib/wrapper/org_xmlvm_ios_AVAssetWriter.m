
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetWriter (AVAssetWriterWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetWriter (AVAssetWriterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetWriter.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetWriter();
}
@end

void org_xmlvm_ios_AVAssetWriter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetWriter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetWriter();
        org_xmlvm_ios_AVAssetWriter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetWriter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetWriter]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter___INIT____org_xmlvm_ios_NSURL_java_lang_String_org_xmlvm_ios_Reference]
NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    AVAssetWriter* var0 = [[AVAssetWriter alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) fileType:ObjCVar2 error:&var3];
    [ObjCVar2 release];

    org_xmlvm_ios_AVAssetWriter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter___INIT___]
    AVAssetWriter* var0 = [[AVAssetWriter alloc ] init];
    org_xmlvm_ios_AVAssetWriter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter___INIT___]

    AVAssetWriter* var0 = [[AVAssetWriter alloc]init];

    org_xmlvm_ios_AVAssetWriter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_assetWriterWithURL___org_xmlvm_ios_NSURL_java_lang_String_org_xmlvm_ios_Reference]
NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    AVAssetWriter* var0 =  [AVAssetWriter  assetWriterWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) fileType:ObjCVar2 error:&var3];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getOutputURL__]

    XMLVM_VAR_THIZ;
    NSURL* var0 = [thiz outputURL];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getOutputFileType__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz outputFileType];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getAvailableMediaTypes__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz availableMediaTypes];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getStatus__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz status];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getError__]

    XMLVM_VAR_THIZ;
    NSError* var0 = [thiz error];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getMetadata__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz metadata];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_setMetadata___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setMetadata:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getShouldOptimizeForNetworkUse__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz shouldOptimizeForNetworkUse];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_setShouldOptimizeForNetworkUse___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShouldOptimizeForNetworkUse:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getInputs__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz inputs];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_canApplyOutputSettings___java_util_Map_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_canAddInput___org_xmlvm_ios_AVAssetWriterInput]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  canAddInput:(AVAssetWriterInput*) (((org_xmlvm_ios_AVAssetWriterInput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_addInput___org_xmlvm_ios_AVAssetWriterInput]

    XMLVM_VAR_THIZ;
    [thiz  addInput:(AVAssetWriterInput*) (((org_xmlvm_ios_AVAssetWriterInput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_startWriting__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz startWriting];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_startSessionAtSourceTime___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz  startSessionAtSourceTime:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_endSessionAtSourceTime___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz  endSessionAtSourceTime:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_cancelWriting__]

    XMLVM_VAR_THIZ;
    [thiz cancelWriting];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_finishWriting__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz finishWriting];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getMovieFragmentInterval__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz movieFragmentInterval];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_setMovieFragmentInterval___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz setMovieFragmentInterval:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_getMovieTimeScale__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz movieTimeScale];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriter_setMovieTimeScale___int]

    XMLVM_VAR_THIZ;
    [thiz setMovieTimeScale:n1];

    
//XMLVM_END_WRAPPER
