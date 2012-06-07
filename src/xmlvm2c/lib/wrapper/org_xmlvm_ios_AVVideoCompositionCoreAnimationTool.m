
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVVideoCompositionCoreAnimationTool (AVVideoCompositionCoreAnimationToolWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVVideoCompositionCoreAnimationTool (AVVideoCompositionCoreAnimationToolWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVVideoCompositionCoreAnimationTool.classInitialized)
        __INIT_org_xmlvm_ios_AVVideoCompositionCoreAnimationTool();
}
@end

void org_xmlvm_ios_AVVideoCompositionCoreAnimationTool_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVVideoCompositionCoreAnimationTool class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVVideoCompositionCoreAnimationTool();
        org_xmlvm_ios_AVVideoCompositionCoreAnimationTool_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVVideoCompositionCoreAnimationTool]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVVideoCompositionCoreAnimationTool]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionCoreAnimationTool___INIT___]
    AVVideoCompositionCoreAnimationTool* var0 = [[AVVideoCompositionCoreAnimationTool alloc ] init];
    org_xmlvm_ios_AVVideoCompositionCoreAnimationTool_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionCoreAnimationTool___INIT___]

    AVVideoCompositionCoreAnimationTool* var0 = [[AVVideoCompositionCoreAnimationTool alloc]init];

    org_xmlvm_ios_AVVideoCompositionCoreAnimationTool_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionCoreAnimationTool_videoCompositionCoreAnimationToolWithAdditionalLayer___org_xmlvm_ios_CALayer_int]

    AVVideoCompositionCoreAnimationTool* var0 =  [AVVideoCompositionCoreAnimationTool  videoCompositionCoreAnimationToolWithAdditionalLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) asTrackID:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionCoreAnimationTool_videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer___org_xmlvm_ios_CALayer_org_xmlvm_ios_CALayer]

    AVVideoCompositionCoreAnimationTool* var0 =  [AVVideoCompositionCoreAnimationTool  videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) inLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
