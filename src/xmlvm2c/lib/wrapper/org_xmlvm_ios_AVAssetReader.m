
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetReader (AVAssetReaderWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetReader (AVAssetReaderWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetReader.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetReader();
}
@end

void org_xmlvm_ios_AVAssetReader_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetReader class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetReader();
        org_xmlvm_ios_AVAssetReader_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetReader]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetReader]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader___INIT____org_xmlvm_ios_AVAsset_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    AVAssetReader* var0 = [[AVAssetReader alloc] initWithAsset:(AVAsset*) (((org_xmlvm_ios_AVAsset*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];
    org_xmlvm_ios_AVAssetReader_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader___INIT___]
    AVAssetReader* var0 = [[AVAssetReader alloc ] init];
    org_xmlvm_ios_AVAssetReader_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader___INIT___]

    AVAssetReader* var0 = [[AVAssetReader alloc]init];

    org_xmlvm_ios_AVAssetReader_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_assetReaderWithAsset___org_xmlvm_ios_AVAsset_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    AVAssetReader* var0 =  [AVAssetReader  assetReaderWithAsset:(AVAsset*) (((org_xmlvm_ios_AVAsset*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_getAsset__]

    XMLVM_VAR_THIZ;
    AVAsset* var0 = [thiz asset];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_getStatus__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz status];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_getError__]

    XMLVM_VAR_THIZ;
    NSError* var0 = [thiz error];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_getTimeRange__]

    XMLVM_VAR_THIZ;
    CMTimeRange var0 = [thiz timeRange];
    
    return fromCMTimeRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_setTimeRange___org_xmlvm_ios_CMTimeRange]

    XMLVM_VAR_THIZ;
    [thiz setTimeRange:toCMTimeRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_getOutputs__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz outputs];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_canAddOutput___org_xmlvm_ios_AVAssetReaderOutput]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  canAddOutput:(AVAssetReaderOutput*) (((org_xmlvm_ios_AVAssetReaderOutput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_addOutput___org_xmlvm_ios_AVAssetReaderOutput]

    XMLVM_VAR_THIZ;
    [thiz  addOutput:(AVAssetReaderOutput*) (((org_xmlvm_ios_AVAssetReaderOutput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_startReading__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz startReading];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetReader_cancelReading__]

    XMLVM_VAR_THIZ;
    [thiz cancelReading];

    
//XMLVM_END_WRAPPER
