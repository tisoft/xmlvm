
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVURLAsset (AVURLAssetWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVURLAsset (AVURLAssetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVURLAsset.classInitialized)
        __INIT_org_xmlvm_ios_AVURLAsset();
}
@end

void org_xmlvm_ios_AVURLAsset_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAsset_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVURLAsset class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVURLAsset();
        org_xmlvm_ios_AVURLAsset_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVURLAsset]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVURLAsset]
__DELETE_org_xmlvm_ios_AVAsset(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVURLAsset___INIT____org_xmlvm_ios_NSURL_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVURLAsset___INIT___]
    AVURLAsset* var0 = [[AVURLAsset alloc ] init];
    org_xmlvm_ios_AVURLAsset_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVURLAsset___INIT___]
    AVURLAsset* var0 = [[AVURLAsset alloc ] init];
    org_xmlvm_ios_AVURLAsset_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVURLAsset___INIT___]

    AVURLAsset* var0 = [[AVURLAsset alloc]init];

    org_xmlvm_ios_AVURLAsset_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVURLAsset_URLAssetWithURL___org_xmlvm_ios_NSURL_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVURLAsset_getURL__]

    XMLVM_VAR_THIZ;
    NSURL* var0 = [thiz URL];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVURLAsset_compatibleTrackForCompositionTrack___org_xmlvm_ios_AVCompositionTrack]

    XMLVM_VAR_THIZ;
    
    AVAssetTrack* var0 = [thiz  compatibleTrackForCompositionTrack:(AVCompositionTrack*) (((org_xmlvm_ios_AVCompositionTrack*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
