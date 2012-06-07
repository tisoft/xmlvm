
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetReaderOutput (AVAssetReaderOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetReaderOutput (AVAssetReaderOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetReaderOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetReaderOutput();
}
@end

void org_xmlvm_ios_AVAssetReaderOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetReaderOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetReaderOutput();
        org_xmlvm_ios_AVAssetReaderOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetReaderOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetReaderOutput]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderOutput___INIT___]
    AVAssetReaderOutput* var0 = [[AVAssetReaderOutput alloc ] init];
    org_xmlvm_ios_AVAssetReaderOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderOutput___INIT___]

    AVAssetReaderOutput* var0 = [[AVAssetReaderOutput alloc]init];

    org_xmlvm_ios_AVAssetReaderOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderOutput_getMediaType__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz mediaType];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReaderOutput_copyNextSampleBuffer__]

    XMLVM_VAR_THIZ;
    
    CMSampleBuffer* var0 = [thiz copyNextSampleBuffer];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
