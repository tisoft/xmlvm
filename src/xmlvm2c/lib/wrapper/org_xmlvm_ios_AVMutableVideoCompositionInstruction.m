
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVMutableVideoCompositionInstruction (AVMutableVideoCompositionInstructionWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVMutableVideoCompositionInstruction (AVMutableVideoCompositionInstructionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVMutableVideoCompositionInstruction.classInitialized)
        __INIT_org_xmlvm_ios_AVMutableVideoCompositionInstruction();
}
@end

void org_xmlvm_ios_AVMutableVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVMutableVideoCompositionInstruction class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVMutableVideoCompositionInstruction();
        org_xmlvm_ios_AVMutableVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVMutableVideoCompositionInstruction]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVMutableVideoCompositionInstruction]
__DELETE_org_xmlvm_ios_AVVideoCompositionInstruction(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction___INIT___]
    AVMutableVideoCompositionInstruction* var0 = [[AVMutableVideoCompositionInstruction alloc ] init];
    org_xmlvm_ios_AVMutableVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction___INIT___]
    AVMutableVideoCompositionInstruction* var0 = [[AVMutableVideoCompositionInstruction alloc ] init];
    org_xmlvm_ios_AVMutableVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction___INIT___]

    AVMutableVideoCompositionInstruction* var0 = [[AVMutableVideoCompositionInstruction alloc]init];

    org_xmlvm_ios_AVMutableVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_videoCompositionInstruction__]

    AVMutableVideoCompositionInstruction* var0 =  [AVMutableVideoCompositionInstruction videoCompositionInstruction];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_getTimeRange__]

    XMLVM_VAR_THIZ;
    CMTimeRange var0 = [thiz timeRange];
    
    return fromCMTimeRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_setTimeRange___org_xmlvm_ios_CMTimeRange]

    XMLVM_VAR_THIZ;
    [thiz setTimeRange:toCMTimeRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_getBackgroundColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz backgroundColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_setBackgroundColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    [thiz setBackgroundColor:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_getLayerInstructions__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz layerInstructions];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_setLayerInstructions___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setLayerInstructions:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_getEnablePostProcessing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz enablePostProcessing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableVideoCompositionInstruction_setEnablePostProcessing___boolean]

    XMLVM_VAR_THIZ;
    [thiz setEnablePostProcessing:n1];

    
//XMLVM_END_WRAPPER
