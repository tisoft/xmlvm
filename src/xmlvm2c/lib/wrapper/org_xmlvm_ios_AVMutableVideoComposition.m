
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVMutableVideoComposition (AVMutableVideoCompositionWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVMutableVideoComposition (AVMutableVideoCompositionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVMutableVideoComposition.classInitialized)
        __INIT_org_xmlvm_ios_AVMutableVideoComposition();
}
@end

void org_xmlvm_ios_AVMutableVideoComposition_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVVideoComposition_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVMutableVideoComposition class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVMutableVideoComposition();
        org_xmlvm_ios_AVMutableVideoComposition_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVMutableVideoComposition]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVMutableVideoComposition]
__DELETE_org_xmlvm_ios_AVVideoComposition(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition___INIT___]
    AVMutableVideoComposition* var0 = [[AVMutableVideoComposition alloc ] init];
    org_xmlvm_ios_AVMutableVideoComposition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition___INIT___]
    AVMutableVideoComposition* var0 = [[AVMutableVideoComposition alloc ] init];
    org_xmlvm_ios_AVMutableVideoComposition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition___INIT___]

    AVMutableVideoComposition* var0 = [[AVMutableVideoComposition alloc]init];

    org_xmlvm_ios_AVMutableVideoComposition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_videoComposition__]

    AVMutableVideoComposition* var0 =  [AVMutableVideoComposition videoComposition];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_getFrameDuration__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz frameDuration];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_setFrameDuration___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz setFrameDuration:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_getRenderSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz renderSize];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_setRenderSize___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    [thiz setRenderSize:toCGSize(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_getRenderScale__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz renderScale];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_setRenderScale___float]

    XMLVM_VAR_THIZ;
    [thiz setRenderScale:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_getInstructions__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz instructions];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_setInstructions___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setInstructions:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_getAnimationTool__]

    XMLVM_VAR_THIZ;
    AVVideoCompositionCoreAnimationTool* var0 = [thiz animationTool];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoComposition_setAnimationTool___org_xmlvm_ios_AVVideoCompositionCoreAnimationTool]

    XMLVM_VAR_THIZ;
    [thiz setAnimationTool:(AVVideoCompositionCoreAnimationTool*) (((org_xmlvm_ios_AVVideoCompositionCoreAnimationTool*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
