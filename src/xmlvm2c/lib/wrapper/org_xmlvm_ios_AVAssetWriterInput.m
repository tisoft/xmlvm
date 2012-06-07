
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetWriterInput (AVAssetWriterInputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetWriterInput (AVAssetWriterInputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetWriterInput.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetWriterInput();
}
@end

void org_xmlvm_ios_AVAssetWriterInput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetWriterInput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetWriterInput();
        org_xmlvm_ios_AVAssetWriterInput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetWriterInput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetWriterInput]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput___INIT____java_lang_String_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput___INIT___]
    AVAssetWriterInput* var0 = [[AVAssetWriterInput alloc ] init];
    org_xmlvm_ios_AVAssetWriterInput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput___INIT___]

    AVAssetWriterInput* var0 = [[AVAssetWriterInput alloc]init];

    org_xmlvm_ios_AVAssetWriterInput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_assetWriterInputWithMediaType___java_lang_String_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_getMediaType__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz mediaType];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_getOutputSettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_getMetadata__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz metadata];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_setMetadata___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setMetadata:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_isReadyForMoreMediaData__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isReadyForMoreMediaData];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_getExpectsMediaDataInRealTime__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz expectsMediaDataInRealTime];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_setExpectsMediaDataInRealTime___boolean]

    XMLVM_VAR_THIZ;
    [thiz setExpectsMediaDataInRealTime:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_requestMediaDataWhenReadyOnQueue___java_lang_Object_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  requestMediaDataWhenReadyOnQueue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj usingBlock:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_appendSampleBuffer___org_xmlvm_ios_CMSampleBuffer]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  appendSampleBuffer:(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_markAsFinished__]

    XMLVM_VAR_THIZ;
    [thiz markAsFinished];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_getTransform__]

    XMLVM_VAR_THIZ;
    CGAffineTransform var0 = [thiz transform];
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_setTransform___org_xmlvm_ios_CGAffineTransform]

    XMLVM_VAR_THIZ;
    [thiz setTransform:toCGAffineTransform(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_getMediaTimeScale__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz mediaTimeScale];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetWriterInput_setMediaTimeScale___int]

    XMLVM_VAR_THIZ;
    [thiz setMediaTimeScale:n1];

    
//XMLVM_END_WRAPPER
