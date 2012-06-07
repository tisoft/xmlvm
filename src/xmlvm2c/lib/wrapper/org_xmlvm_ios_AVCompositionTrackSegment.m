
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCompositionTrackSegment (AVCompositionTrackSegmentWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCompositionTrackSegment (AVCompositionTrackSegmentWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCompositionTrackSegment.classInitialized)
        __INIT_org_xmlvm_ios_AVCompositionTrackSegment();
}
@end

void org_xmlvm_ios_AVCompositionTrackSegment_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAssetTrackSegment_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCompositionTrackSegment class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCompositionTrackSegment();
        org_xmlvm_ios_AVCompositionTrackSegment_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCompositionTrackSegment]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCompositionTrackSegment]
__DELETE_org_xmlvm_ios_AVAssetTrackSegment(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment___INIT____org_xmlvm_ios_NSURL_int_org_xmlvm_ios_CMTimeRange_org_xmlvm_ios_CMTimeRange]

    AVCompositionTrackSegment* var0 = [[AVCompositionTrackSegment alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) trackID:n2 sourceTimeRange:toCMTimeRange(n3) targetTimeRange:toCMTimeRange(n4)];
    org_xmlvm_ios_AVCompositionTrackSegment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment___INIT____org_xmlvm_ios_CMTimeRange]

    AVCompositionTrackSegment* var0 = [[AVCompositionTrackSegment alloc] initWithTimeRange:toCMTimeRange(n1)];
    org_xmlvm_ios_AVCompositionTrackSegment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment___INIT___]
    AVCompositionTrackSegment* var0 = [[AVCompositionTrackSegment alloc ] init];
    org_xmlvm_ios_AVCompositionTrackSegment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment___INIT___]
    AVCompositionTrackSegment* var0 = [[AVCompositionTrackSegment alloc ] init];
    org_xmlvm_ios_AVCompositionTrackSegment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment___INIT___]

    AVCompositionTrackSegment* var0 = [[AVCompositionTrackSegment alloc]init];

    org_xmlvm_ios_AVCompositionTrackSegment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment_compositionTrackSegmentWithURL___org_xmlvm_ios_NSURL_int_org_xmlvm_ios_CMTimeRange_org_xmlvm_ios_CMTimeRange]

    AVCompositionTrackSegment* var0 =  [AVCompositionTrackSegment  compositionTrackSegmentWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) trackID:n2 sourceTimeRange:toCMTimeRange(n3) targetTimeRange:toCMTimeRange(n4)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment_compositionTrackSegmentWithTimeRange___org_xmlvm_ios_CMTimeRange]

    AVCompositionTrackSegment* var0 =  [AVCompositionTrackSegment  compositionTrackSegmentWithTimeRange:toCMTimeRange(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment_isEmpty__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEmpty];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment_getSourceURL__]

    XMLVM_VAR_THIZ;
    NSURL* var0 = [thiz sourceURL];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrackSegment_getSourceTrackID__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz sourceTrackID];
    
    return var0;
//XMLVM_END_WRAPPER
