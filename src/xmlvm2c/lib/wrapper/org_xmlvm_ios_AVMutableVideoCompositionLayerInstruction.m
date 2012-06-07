
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVMutableVideoCompositionLayerInstruction (AVMutableVideoCompositionLayerInstructionWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVMutableVideoCompositionLayerInstruction (AVMutableVideoCompositionLayerInstructionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction.classInitialized)
        __INIT_org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction();
}
@end

void org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVMutableVideoCompositionLayerInstruction class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction();
        org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction]
__DELETE_org_xmlvm_ios_AVVideoCompositionLayerInstruction(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction___INIT___]
    AVMutableVideoCompositionLayerInstruction* var0 = [[AVMutableVideoCompositionLayerInstruction alloc ] init];
    org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction___INIT___]
    AVMutableVideoCompositionLayerInstruction* var0 = [[AVMutableVideoCompositionLayerInstruction alloc ] init];
    org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction___INIT___]

    AVMutableVideoCompositionLayerInstruction* var0 = [[AVMutableVideoCompositionLayerInstruction alloc]init];

    org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_videoCompositionLayerInstructionWithAssetTrack___org_xmlvm_ios_AVAssetTrack]

    AVMutableVideoCompositionLayerInstruction* var0 =  [AVMutableVideoCompositionLayerInstruction  videoCompositionLayerInstructionWithAssetTrack:(AVAssetTrack*) (((org_xmlvm_ios_AVAssetTrack*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_videoCompositionLayerInstruction__]

    AVMutableVideoCompositionLayerInstruction* var0 =  [AVMutableVideoCompositionLayerInstruction videoCompositionLayerInstruction];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_getTrackID__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz trackID];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_setTrackID___int]

    XMLVM_VAR_THIZ;
    [thiz setTrackID:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_setTransformRampFromStartTransform___org_xmlvm_ios_CGAffineTransform_org_xmlvm_ios_CGAffineTransform_org_xmlvm_ios_CMTimeRange]

    XMLVM_VAR_THIZ;
    [thiz  setTransformRampFromStartTransform:toCGAffineTransform(n1) toEndTransform:toCGAffineTransform(n2) timeRange:toCMTimeRange(n3)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_setTransform___org_xmlvm_ios_CGAffineTransform_org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz  setTransform:toCGAffineTransform(n1) atTime:toCMTime(n2)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_setOpacityRampFromStartOpacity___float_float_org_xmlvm_ios_CMTimeRange]

    XMLVM_VAR_THIZ;
    [thiz  setOpacityRampFromStartOpacity:n1 toEndOpacity:n2 timeRange:toCMTimeRange(n3)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionLayerInstruction_setOpacity___float_org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz  setOpacity:n1 atTime:toCMTime(n2)];

    
//XMLVM_END_WRAPPER
