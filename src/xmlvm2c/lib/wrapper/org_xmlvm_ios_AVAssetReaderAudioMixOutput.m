
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetReaderAudioMixOutput (AVAssetReaderAudioMixOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetReaderAudioMixOutput (AVAssetReaderAudioMixOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetReaderAudioMixOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetReaderAudioMixOutput();
}
@end

void org_xmlvm_ios_AVAssetReaderAudioMixOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAssetReaderOutput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetReaderAudioMixOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetReaderAudioMixOutput();
        org_xmlvm_ios_AVAssetReaderAudioMixOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetReaderAudioMixOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetReaderAudioMixOutput]
__DELETE_org_xmlvm_ios_AVAssetReaderOutput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput___INIT____java_util_List_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput___INIT___]
    AVAssetReaderAudioMixOutput* var0 = [[AVAssetReaderAudioMixOutput alloc ] init];
    org_xmlvm_ios_AVAssetReaderAudioMixOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput___INIT___]
    AVAssetReaderAudioMixOutput* var0 = [[AVAssetReaderAudioMixOutput alloc ] init];
    org_xmlvm_ios_AVAssetReaderAudioMixOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput___INIT___]

    AVAssetReaderAudioMixOutput* var0 = [[AVAssetReaderAudioMixOutput alloc]init];

    org_xmlvm_ios_AVAssetReaderAudioMixOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput_assetReaderAudioMixOutputWithAudioTracks___java_util_List_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput_getAudioTracks__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz audioTracks];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput_getAudioSettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput_getAudioMix__]

    XMLVM_VAR_THIZ;
    AVAudioMix* var0 = [thiz audioMix];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderAudioMixOutput_setAudioMix___org_xmlvm_ios_AVAudioMix]

    XMLVM_VAR_THIZ;
    [thiz setAudioMix:(AVAudioMix*) (((org_xmlvm_ios_AVAudioMix*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
