
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVVideoCompositionLayerInstruction (AVVideoCompositionLayerInstructionWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVVideoCompositionLayerInstruction (AVVideoCompositionLayerInstructionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVVideoCompositionLayerInstruction.classInitialized)
        __INIT_org_xmlvm_ios_AVVideoCompositionLayerInstruction();
}
@end

void org_xmlvm_ios_AVVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVVideoCompositionLayerInstruction class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVVideoCompositionLayerInstruction();
        org_xmlvm_ios_AVVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVVideoCompositionLayerInstruction]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVVideoCompositionLayerInstruction]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionLayerInstruction___INIT___]
    AVVideoCompositionLayerInstruction* var0 = [[AVVideoCompositionLayerInstruction alloc ] init];
    org_xmlvm_ios_AVVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionLayerInstruction___INIT___]

    AVVideoCompositionLayerInstruction* var0 = [[AVVideoCompositionLayerInstruction alloc]init];

    org_xmlvm_ios_AVVideoCompositionLayerInstruction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionLayerInstruction_getTrackID__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz trackID];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionLayerInstruction_getTransformRampForTime___org_xmlvm_ios_CMTime_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGAffineTransform var3= toCGAffineTransform(jObject3);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CMTimeRange var4= toCMTimeRange(jObject4);
    
    BOOL var0 = [thiz  getTransformRampForTime:toCMTime(n1) startTransform:&var2 endTransform:&var3 timeRange:&var4];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVVideoCompositionLayerInstruction_getOpacityRampForTime___org_xmlvm_ios_CMTime_float_1ARRAY_float_1ARRAY_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CMTimeRange var4= toCMTimeRange(jObject4);
    
    BOOL var0 = [thiz  getOpacityRampForTime:toCMTime(n1) startOpacity:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ endOpacity:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ timeRange:&var4];

    return var0;
//XMLVM_END_WRAPPER
