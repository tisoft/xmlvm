
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVVideoCompositionInstruction (AVVideoCompositionInstructionWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVVideoCompositionInstruction (AVVideoCompositionInstructionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVVideoCompositionInstruction.classInitialized)
        __INIT_org_xmlvm_ios_AVVideoCompositionInstruction();
}
@end

void org_xmlvm_ios_AVVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVVideoCompositionInstruction class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVVideoCompositionInstruction();
        org_xmlvm_ios_AVVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVVideoCompositionInstruction]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVVideoCompositionInstruction]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionInstruction___INIT___]
    AVVideoCompositionInstruction* var0 = [[AVVideoCompositionInstruction alloc ] init];
    org_xmlvm_ios_AVVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionInstruction___INIT___]

    AVVideoCompositionInstruction* var0 = [[AVVideoCompositionInstruction alloc]init];

    org_xmlvm_ios_AVVideoCompositionInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionInstruction_getTimeRange__]

    XMLVM_VAR_THIZ;
    CMTimeRange var0 = [thiz timeRange];
    
    return fromCMTimeRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionInstruction_getBackgroundColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz backgroundColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionInstruction_setBackgroundColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    [thiz setBackgroundColor:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionInstruction_getLayerInstructions__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz layerInstructions];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionInstruction_getEnablePostProcessing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz enablePostProcessing];
    
    return var0;
//XMLVM_END_WRAPPER
