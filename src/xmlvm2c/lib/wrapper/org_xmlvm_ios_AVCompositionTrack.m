
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCompositionTrack (AVCompositionTrackWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCompositionTrack (AVCompositionTrackWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCompositionTrack.classInitialized)
        __INIT_org_xmlvm_ios_AVCompositionTrack();
}
@end

void org_xmlvm_ios_AVCompositionTrack_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAssetTrack_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCompositionTrack class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCompositionTrack();
        org_xmlvm_ios_AVCompositionTrack_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCompositionTrack]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCompositionTrack]
__DELETE_org_xmlvm_ios_AVAssetTrack(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrack___INIT___]
    AVCompositionTrack* var0 = [[AVCompositionTrack alloc ] init];
    org_xmlvm_ios_AVCompositionTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrack___INIT___]
    AVCompositionTrack* var0 = [[AVCompositionTrack alloc ] init];
    org_xmlvm_ios_AVCompositionTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrack___INIT___]

    AVCompositionTrack* var0 = [[AVCompositionTrack alloc]init];

    org_xmlvm_ios_AVCompositionTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCompositionTrack_getSegments__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz segments];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
