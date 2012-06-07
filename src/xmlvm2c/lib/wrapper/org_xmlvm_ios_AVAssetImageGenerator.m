
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetImageGenerator (AVAssetImageGeneratorWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetImageGenerator (AVAssetImageGeneratorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetImageGenerator.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetImageGenerator();
}
@end

void org_xmlvm_ios_AVAssetImageGenerator_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetImageGenerator class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetImageGenerator();
        org_xmlvm_ios_AVAssetImageGenerator_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetImageGenerator]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetImageGenerator]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator___INIT____org_xmlvm_ios_AVAsset]

    AVAssetImageGenerator* var0 = [[AVAssetImageGenerator alloc] initWithAsset:(AVAsset*) (((org_xmlvm_ios_AVAsset*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_AVAssetImageGenerator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator___INIT___]
    AVAssetImageGenerator* var0 = [[AVAssetImageGenerator alloc ] init];
    org_xmlvm_ios_AVAssetImageGenerator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator___INIT___]

    AVAssetImageGenerator* var0 = [[AVAssetImageGenerator alloc]init];

    org_xmlvm_ios_AVAssetImageGenerator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_getAppliesPreferredTrackTransform__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz appliesPreferredTrackTransform];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_setAppliesPreferredTrackTransform___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAppliesPreferredTrackTransform:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_getMaximumSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz maximumSize];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_setMaximumSize___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    [thiz setMaximumSize:toCGSize(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_getApertureMode__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz apertureMode];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_setApertureMode___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setApertureMode:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_getVideoComposition__]

    XMLVM_VAR_THIZ;
    AVVideoComposition* var0 = [thiz videoComposition];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_setVideoComposition___org_xmlvm_ios_AVVideoComposition]

    XMLVM_VAR_THIZ;
    [thiz setVideoComposition:(AVVideoComposition*) (((org_xmlvm_ios_AVVideoComposition*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_assetImageGeneratorWithAsset___org_xmlvm_ios_AVAsset]

    AVAssetImageGenerator* var0 =  [AVAssetImageGenerator  assetImageGeneratorWithAsset:(AVAsset*) (((org_xmlvm_ios_AVAsset*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_copyCGImageAtTime___org_xmlvm_ios_CMTime_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CMTime var2= toCMTime(jObject2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    CGImageRef var0 = [thiz  copyCGImageAtTime:toCMTime(n1) actualTime:&var2 error:&var3];    XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);


    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes___java_util_List_java_lang_Object]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  generateCGImagesAsynchronouslyForTimes:ObjCVar1 completionHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetImageGenerator_cancelAllCGImageGeneration__]

    XMLVM_VAR_THIZ;
    [thiz cancelAllCGImageGeneration];

    
//XMLVM_END_WRAPPER
