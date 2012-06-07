
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVPlayerItemTrack (AVPlayerItemTrackWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVPlayerItemTrack (AVPlayerItemTrackWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVPlayerItemTrack.classInitialized)
        __INIT_org_xmlvm_ios_AVPlayerItemTrack();
}
@end

void org_xmlvm_ios_AVPlayerItemTrack_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVPlayerItemTrack class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVPlayerItemTrack();
        org_xmlvm_ios_AVPlayerItemTrack_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVPlayerItemTrack]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVPlayerItemTrack]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemTrack___INIT___]
    AVPlayerItemTrack* var0 = [[AVPlayerItemTrack alloc ] init];
    org_xmlvm_ios_AVPlayerItemTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemTrack___INIT___]

    AVPlayerItemTrack* var0 = [[AVPlayerItemTrack alloc]init];

    org_xmlvm_ios_AVPlayerItemTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemTrack_getAssetTrack__]

    XMLVM_VAR_THIZ;
    AVAssetTrack* var0 = [thiz assetTrack];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemTrack_isEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemTrack_setEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setEnabled:n1];

    
//XMLVM_END_WRAPPER
