
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetTrackSegment (AVAssetTrackSegmentWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetTrackSegment (AVAssetTrackSegmentWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetTrackSegment.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetTrackSegment();
}
@end

void org_xmlvm_ios_AVAssetTrackSegment_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetTrackSegment class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetTrackSegment();
        org_xmlvm_ios_AVAssetTrackSegment_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetTrackSegment]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetTrackSegment]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrackSegment___INIT___]
    AVAssetTrackSegment* var0 = [[AVAssetTrackSegment alloc ] init];
    org_xmlvm_ios_AVAssetTrackSegment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrackSegment___INIT___]

    AVAssetTrackSegment* var0 = [[AVAssetTrackSegment alloc]init];

    org_xmlvm_ios_AVAssetTrackSegment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrackSegment_getTimeMapping__]

    XMLVM_VAR_THIZ;
    CMTimeMapping var0 = [thiz timeMapping];
    
    return fromCMTimeMapping(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrackSegment_isEmpty__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEmpty];
    
    return var0;
//XMLVM_END_WRAPPER
