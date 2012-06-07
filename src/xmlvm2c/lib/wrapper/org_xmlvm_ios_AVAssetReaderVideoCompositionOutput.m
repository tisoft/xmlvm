
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetReaderVideoCompositionOutput (AVAssetReaderVideoCompositionOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetReaderVideoCompositionOutput (AVAssetReaderVideoCompositionOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetReaderVideoCompositionOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetReaderVideoCompositionOutput();
}
@end

void org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAssetReaderOutput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetReaderVideoCompositionOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetReaderVideoCompositionOutput();
        org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetReaderVideoCompositionOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetReaderVideoCompositionOutput]
__DELETE_org_xmlvm_ios_AVAssetReaderOutput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput___INIT____java_util_List_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput___INIT___]
    AVAssetReaderVideoCompositionOutput* var0 = [[AVAssetReaderVideoCompositionOutput alloc ] init];
    org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput___INIT___]
    AVAssetReaderVideoCompositionOutput* var0 = [[AVAssetReaderVideoCompositionOutput alloc ] init];
    org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput___INIT___]

    AVAssetReaderVideoCompositionOutput* var0 = [[AVAssetReaderVideoCompositionOutput alloc]init];

    org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_assetReaderVideoCompositionOutputWithVideoTracks___java_util_List_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_getVideoTracks__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz videoTracks];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_getVideoSettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_getVideoComposition__]

    XMLVM_VAR_THIZ;
    AVVideoComposition* var0 = [thiz videoComposition];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderVideoCompositionOutput_setVideoComposition___org_xmlvm_ios_AVVideoComposition]

    XMLVM_VAR_THIZ;
    [thiz setVideoComposition:(AVVideoComposition*) (((org_xmlvm_ios_AVVideoComposition*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
