
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetReaderTrackOutput (AVAssetReaderTrackOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetReaderTrackOutput (AVAssetReaderTrackOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetReaderTrackOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetReaderTrackOutput();
}
@end

void org_xmlvm_ios_AVAssetReaderTrackOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAssetReaderOutput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetReaderTrackOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetReaderTrackOutput();
        org_xmlvm_ios_AVAssetReaderTrackOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetReaderTrackOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetReaderTrackOutput]
__DELETE_org_xmlvm_ios_AVAssetReaderOutput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderTrackOutput___INIT____org_xmlvm_ios_AVAssetTrack_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderTrackOutput___INIT___]
    AVAssetReaderTrackOutput* var0 = [[AVAssetReaderTrackOutput alloc ] init];
    org_xmlvm_ios_AVAssetReaderTrackOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderTrackOutput___INIT___]
    AVAssetReaderTrackOutput* var0 = [[AVAssetReaderTrackOutput alloc ] init];
    org_xmlvm_ios_AVAssetReaderTrackOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderTrackOutput___INIT___]

    AVAssetReaderTrackOutput* var0 = [[AVAssetReaderTrackOutput alloc]init];

    org_xmlvm_ios_AVAssetReaderTrackOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderTrackOutput_assetReaderTrackOutputWithTrack___org_xmlvm_ios_AVAssetTrack_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderTrackOutput_getTrack__]

    XMLVM_VAR_THIZ;
    AVAssetTrack* var0 = [thiz track];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderTrackOutput_getOutputSettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
